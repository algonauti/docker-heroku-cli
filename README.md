# Alpine Heroku CLI

This image packages the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) inside an Alpine Linux based Docker container. The version will track that of the Heroku CLI.

## Usage

The easiest way to use this would be to use your Heroku [API key](https://dashboard.heroku.com/account) or an [OAuth authorization token](https://github.com/heroku/heroku-cli-oauth#authorizations) set as the `HEROKU_API_KEY` environment variable.


```bash
docker run --rm algonauti/heroku-cli version
# heroku/7.47.3 linux-x64 node-v14.15.1

# API key/OAuth token method
docker run --rm  -e HEROKU_API_KEY="api123" algonauti/heroku-cli list
```
