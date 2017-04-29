# laravelSandboxDocker
## Intro
Test environment for Laravel PHP framework.
## Howto
Build images:
```bash
docker-compose build
```
Run images in background (containers names: "laravel" and "laravel-mysql")
```bash
docker-compose up -d
```
To go inside container for work:
```bash
docker exec -it laravel zsh
```
## Project URL
From Host, go to http://localhost/laravel5/public
## Tooltips
To turn off autoindent when you paste code in vim.
```vim
:set paste
```
After pasting code.
```vim
:set nopaste
```

