# Docker Images

用來快速開發的 docker images, 多半都是把 Dockfile 放到 project root 後就直接使用

常用指令:

```bash
git clone git@github.com:o-p/docker.git
cd docker
git checkout -t <tag> -b <branch-name>
cp ./Dockerfile <project-path>
docker build -t <image-tag-name> <project-path>
docker run -d <image-tag-name>:<version> # set env / ports here
```

## Guides

Only one dockerfile in each branch, and master branch would never contains dockerfile, so it'll never conflict while rebase master.
