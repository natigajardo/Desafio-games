class Piece < ApplicationRecord
  belongs_to :game02
  has_many_attached :photos
end
