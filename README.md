# Docker Images

用來快速開發的 docker images, 預期使用方法:

1. 切換到工作 branch 或 tag, `git checkout -t <tag> -b <branch>`

2. 可能需要 build image `docker build -t <name>:<tag> <project>`

3. 看 project 規模

    * 需要整合很多服務 - 透過 Docker Compose `docker-compose run -d`

    * 簡單測試 web app - 直接 run image in detach mode:
      ```bash
      docker run -p <local-port>:<container-port> -d <name>:<tag>
      open http://127.0.0.1:<local-port>
      ```

    * 互動模式, `docker run -it <name>:<tag>`

## Guides

單一 branch 只最小幅度寫 Dockerfile, 其他服務盡量透過 official lib image (mysql/redis/...)

branch 說明不寫在 README.md 避免每次 master 升級發生衝突
