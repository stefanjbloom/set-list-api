class Api::V1::ArtistsController < ApplicationController
  def index
    render json: ArtistSerializer.new(Artist.all)
  end

  def show
    render json: ArtistSerializer.new(Artist.find(params[:id]))
  end
end