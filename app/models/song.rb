class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  has_many :song_playlists
  has_many :playlists, through: :song_playlists

  def self.search(search)
    # byebug
    if search.present?
      Song.joins(:artist, :genre).where("artists.name like ? or title like ? or genres.name like ?", "%#{search}%", "%#{search}%", "%#{search}%") # how to alter this for apostrophes in the song titles
    else
      self.all
    end
  end

  def length_to_minutes_and_seconds
    Time.at(self.duration).utc.strftime("%M minutes, %S seconds")
  end
end
