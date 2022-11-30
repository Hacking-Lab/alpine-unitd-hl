# alpine-unitd
Alpine Image with small unitd web service (static page)

Please put your files in `/opt/www` folder

## Benefit
* docker image is extremely small
* smaller than alpine-nginx

## Details
```
╭─ /opt/alpine-unitd  main                                                                                                                                                                                    ✔ 
╰─ docker images
REPOSITORY     TAG       IMAGE ID       CREATED         SIZE
alpine-unitd   latest    d4412efb1887   9 seconds ago   6.67MB

╭─ /opt/alpine-unitd  main                                                                                                                                                                                    ✔ 
╰─ tree .
.
├── docker-compose.yml
├── Dockerfile
├── README.md
└── root
    ├── opt
    │   └── www
    │       └── index.html
    └── var
        └── lib
            └── unit
                ├── certs
                ├── conf.json
                └── version

7 directories, 6 files

╭─ /opt/alpine-unitd  main   
```


