class User < ApplicationRecord
  has_many :playlists
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, length: { in: 6..10 }
end
