class User < ApplicationRecord
    has_many :reviews
    has_many :restaurants, through: :reviews
    has_secure_password

  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  

  def self.create_by_facebook_omniauth(auth)
  self.find_or_create_by(email: auth['info']['email']) do |u|
    u.name = auth['info']['name']
    u.password = SecureRandom.hex
   end
  end 
end
