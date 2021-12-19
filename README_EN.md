# ServerStatus - `client`

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dtcokr/serverstatus/client)
![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/serverstatus)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-serverstatus)

**CREDIT**: https://github.com/cppla/ServerStatus

[中文](https://github.com/dtcokr/docker-serverstatus/blob/client/README.md) | EN

Now supports: 
- linux/arm64
- linux/arm/v7
- linux/arm/v6
- linux/amd64
- linux/386
- linux/ppc64le
- linux/s390x


## Usage

use `host` network mode to monitor host network usage `--network=host` (**REQUIRED**)

### to use `client-linux.py` (**DEFAULT**)

`docker run --network=host dtcokr/serverstatus:client`

### to use `client-psutil.py` (**OPTIONAL**)

`docker run --network=host dtcokr/serverstatus:client python3 client-psutil.py`

### multiple disks

if you have multiple disks or logical volumes on the host, mount them `readonly` to somewhere (i.e. `/mnt/extdisk`) in the docker container. otherwise, total disk usage will be incomplete.

let's say you have `/dev/sda1` on the host mounted on `/root` and `/dev/mapper/lv_user2` on the host mounted on `/home/user2`, you can do:

`docker run --network=host -v /home/user2:/mnt/extdisk:ro dtcokr/serverstatus:client`

## Docker Envs

- `SERVER` --- `127.0.0.1` _by default_
- `USER` --- `s01` _by default_
- `PORT` --- `35601` _by default_
- `PASSWORD` --- `USER_DEFAULT_PASSWORD` _by default_
- `INTERVAL` --- `1` _by default_
- `PROBEPORT` --- `80` _by default_
- `PROBE_PROTOCOL_PREFER` --- `ipv4` _by default_
- `PING_PACKET_HISTORY_LEN` --- `100` _by default_
- `CU` --- `cu.tz.cloudcpp.com` _by default_
- `CT` --- `ct.tz.cloudcpp.com` _by default_
- `CM` --- `cm.tz.cloudcpp.com` _by default_
