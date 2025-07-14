## Build
```bash
sudo docker build . -t kostrykin/github-actions-runner
```

## Run
```bash
sudo docker run -d --restart unless-stopped --name "github-runner" -e RUNNER_NAME="bmcv-nas01" -e RUNNER_SCOPE="org" -e ORG_NAME="BMCV" -e RUNNER_GROUP="Self-hosted" -e ACCESS_TOKEN="$GITHUB_PAT" -v /var/run/docker.sock:/var/run/docker.sock kostrykin/github-actions-runner:latest
```
