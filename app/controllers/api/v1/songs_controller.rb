class Api::V1::SongsController < ApplicationController
  def index
    songs = Song.all
    render json: SongSerializer.new(songs)
  end

  def show
    render json: SongSerializer.new(Song.find(params[:id]))
  end
  
  def create
    render json: Song.create(song_params)
  end

  def update
    render json: Song.update(params[:id], song_params)
  end

  def destroy
    render json: Song.delete(params[:id])
  end

  private

  def song_params
    params.require(:song).permit(:title, :length, :play_count )
  end
end