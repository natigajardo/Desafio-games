class Cover < ApplicationRecord
  belongs_to :game02
  has_one_attached :photo
end
