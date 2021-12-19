# ServerStatus - `client`

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dtcokr/serverstatus/client)
![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/serverstatus)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-serverstatus)

**感谢**: https://github.com/cppla/ServerStatus

中文 | [EN](https://github.com/dtcokr/docker-serverstatus/blob/client/README_EN.md)

支持的处理器架构: 
- linux/arm64
- linux/arm/v7
- linux/arm/v6
- linux/amd64
- linux/386
- linux/ppc64le
- linux/s390x


## Usage

**必须**使用 `host` 网络模式以监控宿主机的网络使用 `--network=host`

### 如使用 `client-linux.py` (**默认**)

`docker run --network=host dtcokr/serverstatus:client`

### 如使用 `client-psutil.py` (**可选**)

`docker run --network=host dtcokr/serverstatus:client python3 client-psutil.py`

### 多个磁盘

 如主机上带有多个磁盘或逻辑卷，将它们在宿主机上的挂载点以 `readonly` 挂载到 Docker container 的任意地方 (比如： `/mnt/extdisk`)。否则，总磁盘使用率的统计会不完整。

假如你在宿主机上的其中一个磁盘 `/dev/sda1` 挂载在 `/root`，另有一个逻辑卷 `/dev/mapper/lv_user2` 挂载在 `/home/user2`，那么你可以：

`docker run --network=host -v /home/user2:/mnt/extdisk:ro dtcokr/serverstatus:client`

## Docker 环境变量

- `SERVER` --- 可选 - _默认_ `127.0.0.1`
- `USER` --- 可选 - _默认_ `s01`
- `PORT` --- 可选 - _默认_ `35601`
- `PASSWORD` --- 可选 - _默认_ `USER_DEFAULT_PASSWORD`
- `INTERVAL` --- 可选 - _默认_ `1`
- `PROBEPORT` --- 可选 - _默认_ `80`
- `PROBE_PROTOCOL_PREFER` --- 可选 - _默认_ `ipv4`
- `PING_PACKET_HISTORY_LEN` --- 可选 - _默认_ `100`
- `CU` --- 可选 - _默认_ `cu.tz.cloudcpp.com`
- `CT` --- 可选 - _默认_ `ct.tz.cloudcpp.com`
- `CM` --- 可选 - _默认_ `cm.tz.cloudcpp.com`
