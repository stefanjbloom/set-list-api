class SongSerializer
  include JSONAPI::Serializer
  attributes :title, :length
end
