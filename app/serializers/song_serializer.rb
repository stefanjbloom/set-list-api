class SongSerializer
  def self.format_songs(songs)
    songs.map do |song|
      {
        id: song.id,
        title: song.title,
        length: song.length,
        popularity: song.popularity
      }
    end
  end
end