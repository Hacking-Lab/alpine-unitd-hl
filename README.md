# alpine-unitd
Alpine Image with small unitd web service (static page)

Please put your files in `/opt/www` folder

## Benefit
* docker image is extremely small
* smaller than alpine-nginx

## Details
```
.
├── Dockerfile
├── README.md
├── build-multi-arch.sh
├── docker-compose.yml
└── root
    ├── date.txt
    ├── etc
    │   └── services.d
    │       └── unitd
    │           ├── finish
    │           └── run
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

11 directories, 12 files
```


