class Bill < ApplicationRecord

  has_many :senators
  has_many :teams, through: :senators
  
end
