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
* vim
> To turn off autoindent when you paste code in vim.
> ```vim
> :set paste
> ```
> After pasting code.
> ```vim
> :set nopaste
> ```
* Laravel debug tool bar
Laravel debug bar: [barryvdh](https://github.com/barryvdh/laravel-debugbar)
* Console: `php artisan tinker`
