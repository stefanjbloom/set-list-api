require "rails_helper"

RSpec.describe "Songs endpoints" do
  before(:each) do
    @label = RecordLabel.create!(name: "Atlantic Records")
    @prince = @label.artists.create!(name: "Prince")
  end
  it "can send a list of songs" do
    @prince.songs.create!(title: 'Raspberry Beret', length: 345, play_count: 34)
    @prince.songs.create!(title: 'Purple Rain', length: 524, play_count: 19)
    @prince.songs.create!(title: 'Kiss', length: 2301, play_count: 2300000)

    get "/api/v1/songs"

    expect(response).to be_successful

    songs = JSON.parse(response.body, symbolize_names: true)
    expect(songs.count).to eq(3)

    songs.each do |song|

      expect(song).to have_key(:id)
      expect(song[:id]).to be_an(Integer)

      expect(song).to have_key(:title)
      expect(song[:title]).to be_a(String)

      expect(song).to have_key(:length)
      expect(song[:length]).to be_an(Integer)

      expect(song).to have_key(:play_count)
      expect(song[:play_count]).to be_an(Integer)
    end
  end

  it "can get return about one song" do

    song_1 = @prince.songs.create!(title: 'Raspberry Beret', length: 345, play_count: 34)

    get "/api/v1/songs/#{song_1.id}"

    expect(response).to be_successful

    song_response = JSON.parse(response.body, symbolize_names: true)

    expect(song_response).to have_key(:id)
    expect(song_response[:id]).to eq(song_1.id)

    expect(song_response).to have_key(:title)
    expect(song_response[:title]).to eq(song_1.title)

    expect(song_response).to have_key(:length)
    expect(song_response[:length]).to eq(song_1.length)

    expect(song_response).to have_key(:play_count)
    expect(song_response[:play_count]).to eq(song_1.play_count)
  end
end
