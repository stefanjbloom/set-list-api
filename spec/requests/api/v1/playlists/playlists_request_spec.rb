require 'rails_helper'

RSpec.describe "Playlist Endpoints" do
  it "can return all playlists" do
    talking_heads = Artist.create!(name: "Talking Heads")
    jgb = Artist.create!(name: "Jerry Garcia Band")
    prince = Artist.create!(name: "Prince")

    place = talking_heads.songs.create!(title: "This Must Be The Place", length: 832, play_count: 83209)
    breadbox = jgb.songs.create!(title: "Aint No Bread in the Breadbox", length: 832, play_count: 83209)
    r_and_c = jgb.songs.create!(title: "Reuben and Cherise", length: 832, play_count: 83209)

    # Creates a playlist
    uplifting_sound = Playlist.create!(name: "Uplifting Sound")
    jams = Playlist.create!(name: "Jerry Jams")

    # Creates playlist and associates it with a song. Under the hood, creates a row in the playlist_songs table
    rock = breadbox.playlists.create!(name: "Classic Rock")

    # Creates song and associates it with a playlist. Under the hood, creates a row in the playlist_songs table
    purple = uplifting_sound.songs.create!(title: "Purple Rain", length: 4378, play_count: 7453689, artist: prince)

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    PlaylistSong.create!(song: purple, playlist: jams)
    PlaylistSong.create!(song: place, playlist: jams)

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    rock.songs << place

    # Creates a row in the playlist_songs table. Associates a playlist with a song
    r_and_c.playlists << rock

    get api_v1_playlists_path

    # expect(response).to be_successful

    playlists = JSON.parse(response.body, symbolize_names: true)

    # binding.pry

    # expect the correct number of playlists
    expect(playlists[:data].count).to eq(3)
    expect(playlists[:data][0][:attributes][:name]).to eq("Uplifting Sound")
    expect(playlists[:data][1][:attributes][:name]).to eq("Jerry Jams")
    expect(playlists[:data][2][:attributes][:name]).to eq("Classic Rock")
  end
end