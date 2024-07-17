class SongSerializer
  def self.format_song(song)
    {
      id: song.id,
      title: song.title,
      length: song.length,
      play_count: song.play_count
    }
  end

  def self.format_songs(songs)
    songs.each do |song|
      format_song(song)
    end
  end
end