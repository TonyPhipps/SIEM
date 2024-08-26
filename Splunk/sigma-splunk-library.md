# Create a Splunk savedsearches.conf Comprised of the Latest Sigma Rules

Create this Dockerfile
```
FROM debian:bookworm

RUN apt update
RUN apt install -y python3 python3-pip pipenv git
RUN pipenv install sigma-cli
RUN pipenv run sigma plugin install splunk
```

Open a prompt
(get or build pipelines)
```
mkdir sigma-cli
cd sigma-cli
mkdir pipelines #then copy/paste pipelines here
mkdir output
git clone https://github.com/SigmaHQ/sigma
sudo docker build -t sigma-cli ./
sudo docker run -it --name sigma-cli --rm -v ./output:/mnt/output -v ./sigma/rules/:/mnt/rules -v ./pipelines:/mnt/pipelines sigma-cli:latest pipenv run sigma convert -t splunk -p /mnt/pipelines/evtx2splunk.yml /mnt/rules/windows/ -s  -o /mnt/output/savedsearches.conf
```

Copy/paste the ```./output/savedsearches.conf``` file into ```/opt/splunk/etc/apps/YourApp/local/```