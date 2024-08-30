class Api::V1::ImagesController < ApplicationController
  def show
    artist = params[:artist]

    conn = Faraday.new(url: "https://api.pexels.com") do |faraday|
      faraday.headers["Authorization"] = Rails.application.credentials.pexels[:key]
    end
    response = conn.get("/v1/search", { query: artist })
    # OR response = conn.get("/v1/search?query=#{artist})

    json = JSON.parse(response.body, symbolize_names: true)
    first_photo = json[:photos][0]

    formatted_json = {
      id: nil,
      type: "image",
      attributes: {
        image_url: first_photo[:url],
        photographer: first_photo[:photographer],
        photographer_url: first_photo[:photographer_url],
        alt_text: first_photo[:alt]
      }
    }

    render json: { data: formatted_json }
  end
end