class Mandalorian < ApplicationRecord
  has_many :armors
  validates :name, presence: true, uniqueness: true
end
