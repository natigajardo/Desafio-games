class Rule < ApplicationRecord
  belongs_to :game02
  has_one_attached :document
end
