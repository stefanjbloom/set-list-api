class SongSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :length, :play_count, :average_plays_per_day
end