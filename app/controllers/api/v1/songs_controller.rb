class Api::V1::SongsController < ApplicationController
  def index
    render json: SongSerializer.format_songs(Song.all)
  end

  def show
    render json: SongSerializer.format_song(Song.find(params[:id]))
  end

  def create
      song = Song.new(song_params)
      song.save
      render json: song, status: 201
  end

  def update
    song = Song.find(params[:id])
    song.update(song_params)

    render json: SongSerializer.format_song(song)
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    head :no_content
  end

  private

  def song_params
    params.require(:song).permit(:song, :title, :length, :play_count, :artist_id)
  end
end