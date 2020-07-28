class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  has_many :song_playlists
  has_many :playlists, through: :song_playlists

  def self.search(search)
    # byebug
    if search.present?
      Song.joins(:artist, :genre).where("artists.name like '%pop%' or title like '%pop%' or genres.name like '%pop%'")
    else
      self.all
    end
  end

end
