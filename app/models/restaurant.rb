class Restaurant < ApplicationRecord
    has_many :reviews
    belongs_to :city
    belongs_to :cuisine
    has_many :users, through: :reviews
end
