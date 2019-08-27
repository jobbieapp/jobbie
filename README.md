# README

## Dependencies
Install docker

## Instructions
Start docker-compose
```bash
docker-compose up --build
```

Setup the DB
```bash
docker-compose run web rails db:setup
```

Destroy services
```bash
docker-compose down
```

Start services
```bash
docker-compose up
```

Rebuild
```bash
docker-compose down && docker-compose up --build
```
