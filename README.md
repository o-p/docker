# Docker Images

用來快速開發的 docker images, 多半都是把 Dockfile 放到 project root 後就直接使用

常用指令:

```bash
git clone git@github.com:o-p/docker.git
cd docker
# Check out to specific tag which match project env
git checkout -t <tag> -b <branch>
# Copy or link dockerfile to project root
cp ./Dockerfile <project>
# Build image, provide a proper name and tag would be helpful
docker build -t <name>:<tag> <project>

# CASE - Web service
#     Run image in background, mapping local port to image exposed ports
docker run -d <name>:<tag> -p <local-port>:<continer-port>
open http://127.0.0.1:<local-port>

# CASE - Bash of dev env
#     Run interactively
docker run -t -i <name>:<tag>
```

## Guides

Only one dockerfile in each branch, and master branch would never contains dockerfile, so it'll never conflict while rebase master.
