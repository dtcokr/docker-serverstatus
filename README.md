# ServerStatus - `client`

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dtcokr/serverstatus/client)
![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/serverstatus)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-serverstatus)

**CREDIT**: https://github.com/cppla/ServerStatus

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

`SERVER` -- *Default* `127.0.0.1`

`USER` -- *Default* `s01`

`PORT` -- *Default* `35601`

`PASSWORD` -- *Default* `USER_DEFAULT_PASSWORD`

`INTERVAL` -- *Default* `1`

`PROBEPORT` -- *Default* `80`

`PROBE_PROTOCOL_PREFER` -- *Default* `ipv4`

`PING_PACKET_HISTORY_LEN` -- *Default* `100`

`CU` -- *Default* `cu.tz.cloudcpp.com`

`CT` -- *Default* `ct.tz.cloudcpp.com`

`CM` -- *Default* `cm.tz.cloudcpp.com`
