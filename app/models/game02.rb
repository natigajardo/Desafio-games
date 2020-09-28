class Game02 < ApplicationRecord
  has_one :rule
  has_one :cover
  has_many :pieces 
end
