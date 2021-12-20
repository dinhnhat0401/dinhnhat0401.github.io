# Technical Blog

## Installation

1. Clone repository

2. Build container

```
$ docker-compose build
```

3. Install gems

```
$ docker-compose run --rm runner
$ bundle install
$ exit
```

## Run local server

```
$ docker-compose up web
```

Now you can browse the site at http://localhost:4000
