# SOGo Docker with nginx

This project results in a Docker image with SOGo service, served by a nginx proxy.

Configuration options for SOGo can be specified as environment variables:

```
    - DB_HOST=db
    - DB_USER=sogo
    - DB_PASS=pass
    - DB_DATABASE=sogo
    - DB_USERPROFILES=mysql://sogo:pass@db:3361/sogo/sogo_user_profile
    - DB_FOLDERINFO=mysql://sogo:pass@db:3361/sogo/sogo_folder_info
    - DB_SESSIONSFOLDER=mysql://sogo:pass@db:3361/sogo/sogo_sessions_folder
    - DB_USERVIEW=mysql://sogo:pass@db:3361/sogo/sogo_view
    - IMAP_SERVER=imaps://mail.somehost.xy:993
    - SIEVE_SERVER=sieve://mail.somehost.xy:4190
    - SMTP_SERVER=mail.somehost.xy
    - MAILDOMAIN=mail.somehost.xy
    - TITLE=My Amazing SOGo Instance
    - LANGUAGE=English
    - TIMEZONE=Europe/Berlin
    - SUPERUSERS=christopher.hauser@alb-tec.de
```

This Docker images uses the [docker-skeleton](https://github.com/cha87de/docker-skeleton).

## TODOs

 - [ ] remove duplicate database specs (e.g. build the connection strings automatically)