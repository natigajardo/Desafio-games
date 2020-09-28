class Game01 < ApplicationRecord
  has_one_attached :rule
  has_one_attached :cover
  has_many_attached :pieces

  validates :rule, presence: true, blob: { content_type: ['application/pdf'] }
  
  end
