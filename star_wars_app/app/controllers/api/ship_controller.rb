class Api::ShipController < ApplicationController
  def index
    response = HTTP.get("https://swapi.dev/api/starships/?search=falcon")
    render json: response.parse
    @employees = HTTP
      .headers({
        "X-User-Email" => Rails.application.credentials.aws[:email]}, 
        "Authorization" => "Bearer #{Rails.application.credentials.news_api[:api_key]}"
      })
      .get("http://localhost:3000/api/v1/employees")
      .parse
    render "index.html.erb"
  end
end
