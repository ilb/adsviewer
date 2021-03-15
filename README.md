# adsviewer

> Сервис просмотра объявлений

## Запуск

1. clone repo
2. `npm install`
4. `npm run dev`

Open http://localhost:3000/adsviewer/search in your browser

### Создать базу данных

Создать базу данных, используя скрипт schema.pg.sql 

```bash
cat sql/schema.pg.sql | sudo -u postgres psql
```
### Создать .env файл

```bash
cp .env.example .env
```

### Создать таблицы

```bash
npx prisma db push --preview-feature
```

### Prisma Studio

```bash
npx prisma studio
```

## Администрирование

### Запуск pgadmin в docker

```
docker run --rm -e PGADMIN_DEFAULT_EMAIL=admin@localhost -e PGADMIN_DEFAULT_PASSWORD=admin -e PGADMIN_LISTEN_PORT=5050 --network="host" -d dpage/pgadmin4
```

После запуска открываем localhost:5050, логинимся с admin@localhost / admin,
добавляем сервер localhost
TODO: хранение настроек серверов