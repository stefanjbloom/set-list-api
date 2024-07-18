require "rails_helper"

RSpec.describe "Artist Endpoints" do
  it "can retrieve all artists in the system" do
    artist1 = Artist.create!(name: "Prince")
    artist2 = Artist.create!(name: "Karol G")
    artist3 = Artist.create!(name: "Billie Eilish")

    get api_v1_artists_path

    expect(response).to be_successful

    # Verify the response format is JSON:API Spec compliant
    artists = JSON.parse(response.body, symbolize_names: true)[:data]
    artists.each do |artist|
      expect(artist[:id]).to be_a String
      expect(artist[:type]).to eq("artist")
      expect(artist[:attributes][:name]).to be_a String
    end
  end

end