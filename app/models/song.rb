class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  has_many :song_playlists
  has_many :playlists, through: :song_playlists

  def self.search(search)
    # byebug
    if search.present?
      Song.joins(:artist, :genre).where("artists.name like '%#{search}%' or title like '%#{search}%' or genres.name like '%#{search}%'")
    else
      self.all
    end
  end
end
