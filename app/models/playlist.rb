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

  # length of playlist
  def playlist_length
    # add length of all songs and display as "- hours, - minutes, - seconds long"
    length = self.songs.sum { |song| song.duration }
    Time.at(length).utc.strftime("%H hours, %M minutes, and %S seconds")
  end

end
