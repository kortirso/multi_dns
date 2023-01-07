# Application for hosting multiple static sites

## Ruby version

- 3.2.0

## Running application locally

```bash
foreman s
```

For switching between domain you need to set DOMAIN variable in .env file.
For getting available constraints check app/constraints folder.

## Running application locally in production environment

For running production env locally you can call

```bash
bin/local-production
```
