# ServerStatus Client

![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/serverstatus)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-serverstatus)

Credit to: https://github.com/cppla/ServerStatus

## Usage

use `host` network mode to monitor host network usage `--network=host` (**must**)

* to use `client-linux.py` (**Default**)

    `docker run --network=host dtcokr/serverstatus:client`

* to use `client-psutil.py`

    `docker run --network=host dtcokr/serverstatus:client python3 client-psutil.py`

* if you have multiple disks/logical volumes on the host, mount them `readonly` to somewhere(i.e. `/mnt/extdisk`) in the docker container. Otherwise, total disk usage will be incomplete.

    let's say you have `/dev/sda1` on the host mounted on `/root` and `/dev/mapper/lv_user2` on the host mounted on `/home/user2`, you can do:

    `docker run --network=host -v /home/user2:/mnt/extdisk:ro dtcokr/serverstatus:client`

### Docker Envs

`SERVER` # default 127.0.0.1

`USER` # default s01

`PORT` # default 35601

`PASSWORD` # default USER_DEFAULT_PASSWORD

`INTERVAL` # default 1

`PORBEPORT` # default 80

`CU` # default cu.tz.cloudcpp.com

`CT` # default ct.tz.cloudcpp.com

`CM` # default cm.tz.cloudcpp.com