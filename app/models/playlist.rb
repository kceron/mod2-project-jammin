class Playlist < ApplicationRecord
  belongs_to :user
  has_many :song_playlists
  has_many :songs, through: :song_playlists

  def self.search(search)
    if search.present? 
       where("NAME like ?", "%#{search}%")
    else
       self.all
    end
  end 
end
