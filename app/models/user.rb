class User < ApplicationRecord
  has_many :playlists
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, length: { in: 6..10 }


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end


end
