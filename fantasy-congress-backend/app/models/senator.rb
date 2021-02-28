class Senator < ApplicationRecord

  belongs_to :team
  belongs_to :bill 
  
end
