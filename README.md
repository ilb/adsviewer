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
npm run prisma:push
```

### Загрузить данные
```bash
cat sql/comment.sql sql/data.sql | sudo -u postgres psql adsviewer
```

### Prisma Studio

```bash
npx prisma studio
```
