function Copy-Sysmon1-to-4688 {
    <#
    .SYNOPSIS
        Takes a savedsearches.conf and looks for rules based on Sysmon Event ID 1, then copies them to another file.
        Then, replaces key values in the rules to work with Windows Security Event ID 4688.

    .DESCRIPTION
        Takes a savedsearches.conf and looks for rules based on Sysmon Event ID 1, then copies them to another file.
        Then, replaces key values in the rules to work with Windows Security Event ID 4688.

    .EXAMPLE
        cd c:\path\to\savedsearches
        Copy-Sysmon1-to-4688

    .EXAMPLE
        Copy-Sysmon1-to-4688 -inputFile c:\savedsearches.conf

    .EXAMPLE
        Copy-Sysmon1-to-4688 -inputFile c:\savedsearches.conf -outputFile c:\4688\savedsearches.conf
        

    .NOTES 
        Updated: 2024-08-29

        Contributing Authors:
            Anthony Phipps
            
        LEGAL: Copyright (C) 2024
        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.
    
        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.

    .LINK
       
    #>

    [CmdletBinding()]
    param(
        [Parameter()]
        [String] $inputFile = ".\savedsearches.conf",

        [Parameter()]
        [String] $outputFile = ".\savedsearches_4688.conf"
    )

    begin{

        $DateScanned = ((Get-Date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ssZ")
        Write-Information -InformationAction Continue -MessageData ("Started at {0}" -f $DateScanned)

        $stopwatch = New-Object System.Diagnostics.Stopwatch
        $stopwatch.Start()
    }

    process{

        # Define the string to search for
        $searchString = "EventID=1 "

        # Initialize a dynamic array (ArrayList) to hold the last two lines
        $lineBuffer = New-Object System.Collections.ArrayList

        # Clear or create the output file
        New-Item -Path $outputFile -ItemType File -Force

        # Read the input file line by line
        Get-Content $inputFile | ForEach-Object {
            $currentLine = $_
            
            # Check if the current line contains the search string
            if ($currentLine -match $searchString) {
                # Write the last two lines and the current line to the output file
                foreach ($line in $lineBuffer) {
                    Add-Content -Path $outputFile -Value $line
                }
                Add-Content -Path $outputFile -Value $currentLine
            }
            
            # Update the line buffer with the last two lines
            if ($lineBuffer.Count -ge 2) {
                $lineBuffer.RemoveAt(0)
            }
            $lineBuffer.Add($currentLine) | Out-Null
        }

        # Replace values to match Security Log 4688
        (Get-Content $outputFile) | ForEach-Object {
            # Apply the replacements to the line
            $_ = $_ -replace 'Channel="Microsoft-Windows-Sysmon/Operational"', 'Channel="Security"'
            $_ = $_ -replace 'EventID=1 ', 'EventID=4688 '
            $_ = $_ -replace 'ParentImage', 'ParentProcessName'
            $_ = $_ -replace 'Image', 'NewProcessName'
            $_ = $_ -replace ' OR OriginalFileName=".*?"', ''
            $_ = $_ -replace ' OriginalFileName=".*?"', ''
            $_ = $_ -replace ' OR Product=".*?"', ''
            $_ = $_ -replace ' Product=".*?"', ''
            $_ = $_ -replace ' OR Company=".*?"', ''
            $_ = $_ -replace ' Company=".*?"', ''
            $_ = $_ -replace ' OR Description=".*?"', ''
            $_ = $_ -replace ' Description=".*?"', ''
            $_ = $_ -replace ' OR IntegrityLevel=".*?"', ''
            $_ = $_ -replace ' IntegrityLevel=".*?"', ''
            $_ = $_ -replace ' OR CurrentDirectory=".*?"', ''
            $_ = $_ -replace ' CurrentDirectory=".*?"', ''
            $_ = $_ -replace '^\[(.*?)\]$', '[$1 4688]'

            # Return the modified line
            $_
        } | Set-Content $outputFile

    }

    end{

        $elapsed = $stopwatch.Elapsed

        Write-Information -InformationAction Continue -MessageData ("Total time elapsed: {0}" -f $elapsed)
        Write-Information -InformationAction Continue -MessageData ("Ended at {0}" -f ((Get-Date).ToUniversalTime()).ToString("yyyy-MM-dd HH:mm:ssZ"))
    }
}