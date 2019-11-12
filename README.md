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

### S3 Bucket Sync

| Variable    | Details                                                     | Example      |
|-------------|-------------------------------------------------------------|--------------|
| FROM_BUCKET | The bucket to sync from.                                    | `prod-files` |
| TO_BUCKET   | The bucket to sync to.                                      | `dev-files`  |
| DELETE      | Delete files in the destination that are not in the source. | `true`       |
