class Armor < ApplicationRecord
  belongs_to :mandalorian
  validates :description, length: { maximum: 50 }
end
