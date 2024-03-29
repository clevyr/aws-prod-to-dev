# AWS Prod to Dev Script

[![](https://images.microbadger.com/badges/image/clevyr/aws-prod-to-dev.svg)](https://microbadger.com/images/clevyr/aws-prod-to-dev "Get your own image badge on microbadger.com")

This is a script that can import a database dump and sync S3 buckets to match a development environment to production.

## Environment Variables

### Database Import

| Variable          | Details                                              | Example            |
|-------------------|------------------------------------------------------|--------------------|
| BACKUP_BUCKET     | The bucket that the database dump will be stored in. | `database-backups` |
| POSTGRES_HOST     | The Postgres host to connect to.                     | `database`         |
| POSTGRES_USERNAME | The Postgres username to authenticate with.          | `username`         |
| POSTGRES_PASSWORD | The Postgres password to authenticate with.          | `password`         |
| POSTGRES_DATABASE | The Postgres database to import into.                | `laravel`          |
| SCHEMA_TO_DROP    | The schema to drop before running the import.        | `public`           |

### S3 Bucket Sync

| Variable    | Details                                                     | Example      |
|-------------|-------------------------------------------------------------|--------------|
| FROM_BUCKET | The bucket to sync from.                                    | `prod-files` |
| TO_BUCKET   | The bucket to sync to.                                      | `dev-files`  |
| DELETE      | Delete files in the destination that are not in the source. | `true`       |

### Laravel-Specific

| Variable     | Details                                       | Example                           |
|--------------|-----------------------------------------------|-----------------------------------|
| DOWN_FILE    | The path of the `down` file to create.        | `/app/storage/app/framework/down` |
| MIGRATE_FILE | The path of the `migrate` file to create.     | `/app/storage/app/migrate`        |
| WWW_USER     | The UID and GID of www-user. Defaults to `82` | `82`                              |
