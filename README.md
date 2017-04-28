# laravelSandboxDocker
## Intro
Test environment for Laravel PHP framework.
## Howto
Build images:
```bash
docker-compose build build
```
Run images in background (containers names: "laravel" and "laravel-mysql")
```bash
docker-compose up -d
```
Go inside container for work:
```bash
docker exec -it laravel zsh
```
## Project URL
From Host, go to http://localhost/laravel5/public
