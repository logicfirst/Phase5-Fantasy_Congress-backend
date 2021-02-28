class Team < ApplicationRecord

  belongs_to :user 
  has_many :senators
  has_many :bills, through: :senators

end
