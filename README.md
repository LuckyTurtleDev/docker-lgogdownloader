# noninteractive lgogdownloader Docker image

This is a noninteractive lgogdownloader Docker image with optimal schedule.

The image run as user `1000:1000`. `/home/user/download` must be owned by this user.


example [`docker-compose.yml`](docker-compose.yml):
```
version: '3.3'
services:
    lgogdownloader:
        image: lukas1818/lgogdownloader
        container_name: lgogdownloader
        environment:
            - GOG_EMAIL=
            - GOG_PASSWORD=
            - INTERVALL=1d
        volumes:
            - './data:/home/user/download'
        command: --help
        restart: unless-stopped
```

You can disable the schedule, if you not set the environment variable `INTERVALL` and remove `restart: unless-stopped`.
