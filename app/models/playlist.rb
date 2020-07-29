class Playlist < ApplicationRecord
  belongs_to :user
  has_many :song_playlists,  dependent: :destroy 
  has_many :songs, through: :song_playlists

  #search button
  def self.search(search)
    if search.present? 
       where("NAME like ?", "%#{search}%")
    else
       self.all
    end
  end
  
  #create a setter method 
  def song_ids=(ids)
    ids.each do |id|
      if !id.blank?
      song = Song.find(id)
  
      self.songs << song
      end 
    end
  end

end
