# ServerStatus Client

![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/serverstatus)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-serverstatus)

Credit to: https://github.com/cppla/ServerStatus

## Usage

* to use `client-linux.py` (**Default**)

`docker run dtcokr/serverstatus:client`

* to use `client-psutil.py`

`docker run dtcokr/serverstatus:client python3 client-psutil.py`

### Docker Envs

**SERVER**      # default 127.0.0.1

**USER**        # default s01


**PORT**        # default 35601

**PASSWORD**    # default USER_DEFAULT_PASSWORD

**INTERVAL**    # default 1

**PORBEPORT**   # default 80

**CU**          # default cu.tz.cloudcpp.com

**CT**          # default ct.tz.cloudcpp.com

**CM**          # default cm.tz.cloudcpp.com