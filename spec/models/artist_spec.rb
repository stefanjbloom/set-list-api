require "rails_helper"

RSpec.describe Artist do
  it {should have_many :songs}

  describe "instance methods" do
    before :each do
      @prince = Artist.create!(name: "Prince")
      @purple = Song.create!(title: "Purple Rain", length: 845, play_count: 8599, artist_id: @prince.id)
      @beret = Song.create!(title: "Raspberry Beret", length: 664, play_count: 99, artist_id: @prince.id)
      @other_song = Song.create!(title: "Another Prince Song", length: 1, play_count: 99, artist_id: @prince.id)
    end

    describe "#average_song_length" do
      it "returns the average song length" do
        expect(@prince.average_song_length.round(2)).to eq(503.33)
      end
    end
  end
end