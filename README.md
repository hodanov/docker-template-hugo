# docker-template-hugo

This is the HUGO template on docker.

# Requirements

The app requires the following to run:

- Docker
- Docker Compose

# Getting Started

To use the app, clone the repo.  
However, since it contains git-submodule, need to clone it with the following command:

```
git clone --recursive git@github.com:hodanov/docker-template-hugo.git
```

If you have already cloned with the normal command, update the submodule with the following command:

```
git submodule init
git submodule update
```

Next, execute `docker compose up`.

```
cd docker-template-hugo
docker-compose up -d
```

After launching containers, access the `localhost:1313`.  
The HUGO blog will be shown.

# Deploy to production

## When using Netlify

Netlify build commands and public directory are set in `netlify.toml` like a below.

```
[build]
publish = "./hugo/public"
command = "hugo -s ./hugo"
```

# Author

[Hoda](https://hodalog.com)
