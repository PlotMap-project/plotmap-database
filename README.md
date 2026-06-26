# PlotMap Database

Репозиторий с базами данных для проекта **PlotMap**.

Здесь лежат:

- `docker-compose.yml` — запуск контейнеров
- `postgresql/` — файлы для PostgreSQL
- `neo4j/` — файлы для Neo4j

## Для чего это нужно

Этот репозиторий нужен для локального запуска инфраструктуры backend'а:

- **PostgreSQL** — основная реляционная база
- **Neo4j** — база для работы с графом

## Как запустить

```bash
docker compose up -d
```

## Как остановить

```bash
docker compose down
```

## Примечание

Перед запуском backend'а нужно сначала поднять базы из этого репозитория, а потом проверить, что настройки подключения в backend совпадают с `docker-compose.yml`.

## Связанные репозитории

- `plotmap-backend` — backend проекта
- `plotmap-database` — базы данных и docker-compose

## Автор

- Гареева София
