class Api::V1::SongsController < ApplicationController
  def index
    render json: SongSerializer.format_songs(Song.all)
  end

  def show
    render json: SongSerializer.format_song(Song.find(params[:id]))
  end
end