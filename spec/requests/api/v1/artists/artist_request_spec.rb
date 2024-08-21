require "rails_helper"

RSpec.describe "Artist Endpoints" do
  it "can retrieve all artists in the system" do
    Artist.create!(name: "Prince")
    Artist.create!(name: "Karol G")
    Artist.create!(name: "Billie Eilish")

    get api_v1_artists_path

    expect(response).to be_successful

    # Verify the response format is JSON:API Spec compliant
    artists = JSON.parse(response.body, symbolize_names: true)[:data]
    expect(artists.length).to eq(3)
    artists.each do |artist|
      expect(artist[:id]).to be_a String
      expect(artist[:type]).to eq("artist")
      expect(artist[:attributes][:name]).to be_a String
    end
  end

  it "can retrieve info about a specific artist" do
    artist1 = Artist.create!(name: "Prince")

    get api_v1_artist_path(artist1)

    expect(response).to be_successful
    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:id]).to eq(artist1.id.to_s)
    expect(json[:data][:attributes][:name]).to eq(artist1.name)
  end

end