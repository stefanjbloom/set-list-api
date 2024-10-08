class Api::V1::PlaylistsController < ApplicationController
  def index
      render json: PlaylistSerializer.new(Playlist.all)
  end
end