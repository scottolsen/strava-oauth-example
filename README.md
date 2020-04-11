Strava OAuth Example
==================

This is a basic example of how to setup OAuth with Strava using the
[strava-ruby-client](https://github.com/dblock/strava-ruby-client) gem,
a complete Ruby client for the [Strava API v3](https://developers.strava.com).

## Usage
1. [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/scottolsen/strava-oauth-example)
2. Setup your Application with Strava on the [My API
   Application](https://www.strava.com/settings/api) page
3. Set Heroku ENVs from values from your Strava API Application
  * `ENV['STRAVA_CLIENT_ID']`
  * `ENV['STRAVA_SECRET']`
  * `ENV['STRAVA_REDIRECT_URI']`
4. Visit your app URL and authorize Strava and you should be redirected to view
   info about yourself
5. Drink a 🍺
