# Debian Heroku CLI

This image packages the current [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) in a Debian Trixie slim container. The CLI is installed with Heroku's official installer when the image is built.

## Usage

Run Heroku CLI commands by invoking `heroku` after the image name:

```bash
docker run --rm algonauti/heroku-cli heroku version
```

Authenticate non-interactively with a Heroku [API key](https://dashboard.heroku.com/account) or [OAuth authorization token](https://github.com/heroku/heroku-cli-oauth#authorizations) in `HEROKU_API_KEY`:

```bash
docker run --rm -e HEROKU_API_KEY="api123" algonauti/heroku-cli heroku list
```
