# CASPERFPGA + Python27

All requirements were downloaded from https://pypi.org/

```
docker build casperfpga .
```

Run docker machine as

```
docker run -ti casperfpga /bin/bash
```

If you change the state of docker contaioner you should commit your changes to a new image.

Do not turn machine off and retrieve the container ID `docker ps -a`, then commit changes

```
docker commit [container_ID] casperfpga:[newtag]
```
