class Song < ApplicationRecord
  before_save { |song| song.popularity = calculate_popularity }

  private

  def calculate_popularity
    if play_count > 5
      'high'
    else
      'low'
    end
  end
end