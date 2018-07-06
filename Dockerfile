# 使用 GO 官方最新 image - Dockerfiles https://github.com/docker-library/golang
FROM golang:latest
MAINTAINER o-p op.github.io@gmail.com

# 移動到 app 目錄, 這邊的目錄名稱應該跟最後執行的 CMD 一致 (如果不存在會自動新增)
WORKDIR /go/src/app
# 直接將所在目錄下的 go files 複製, 將 Dockerfile 複製到 ~/go/src/<project> 下 即可
COPY . .

# 確認 build 狀態 用, 都可以註解掉
RUN printf "Image GO version: %s \n" $GOLANG_VERSION
RUN printf "Image GO Path: %s \n" $GOPATH
RUN ls -al

# 安裝 app dependencies & build
RUN go get -d -v ./...
RUN go install -v ./...

# 如果 app 是 web service, expose 80 port (run image 時需設定 port mapping 才有效)
EXPOSE 80

# 啟動 image 時自動執行 app
CMD ["app"]
