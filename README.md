# alpine-unitd
Alpine Image with small unitd web service (static page)

Please put your files in `/opt/www` folder

## Benefit
* docker image is extremely small
* smaller than alpine-nginx

## Details
```
.
├── build-multi-arch.sh
├── docker-compose.yml
├── Dockerfile
├── README.md
└── root
    ├── date.txt
    ├── etc
    │   └── s6-overlay
    │       ├── s6-rc.d
    │       │   ├── addflag
    │       │   │   ├── dependencies.d
    │       │   │   │   └── adduser -> ../../adduser
    │       │   │   ├── type
    │       │   │   └── up
    │       │   ├── adduser
    │       │   │   ├── type
    │       │   │   └── up
    │       │   ├── cron
    │       │   │   ├── dependencies.d
    │       │   │   │   └── adduser -> ../../adduser
    │       │   │   ├── run
    │       │   │   └── type
    │       │   ├── unitd
    │       │   │   ├── dependencies.d
    │       │   │   │   └── adduser -> ../../adduser
    │       │   │   ├── run
    │       │   │   └── type
    │       │   └── user
    │       │       └── contents.d
    │       │           ├── addflag -> ../../addflag
    │       │           ├── adduser -> ../../adduser
    │       │           ├── cron -> ../../cron
    │       │           └── unitd -> ../../unitd
    │       └── scripts
    │           ├── addflag.sh
    │           └── adduser.sh
    ├── flag-deploy-scripts
    │   ├── deploy-env-flag.sh
    │   └── deploy-file-flag.sh
    ├── opt
    │   └── www
    │       └── index.html
    └── var
        └── lib
            └── unit
                ├── conf.json
                └── version

28 directories, 20 files
```


