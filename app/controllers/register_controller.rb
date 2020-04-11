class RegisterController < ApplicationController
  def new
    redirect_to strava_url
  end

  def create
    @response = client.oauth_token(code: params[:code])
  end

  private

  def client
    Strava::OAuth::Client.new(
      client_id: ENV['STRAVA_CLIENT_ID'],
      client_secret: ENV['STRAVA_SECRET']
    )
  end

  def strava_url
    client.authorize_url(
      redirect_uri: ENV['STRAVA_REDIRECT_URI'],
      approval_prompt: 'force',
      response_type: 'code',
      scope: 'profile:read_all,activity:read_all'
    )
  end
end
