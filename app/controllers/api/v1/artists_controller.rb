class Api::V1::ArtistsController < ApplicationController
  def index
    render json: ArtistSerializer.new(Artist.all)
  end
end