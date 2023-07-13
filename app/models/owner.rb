class Owner < ApplicationRecord
  # validates :name, presence: true, uniqueness: true
  has_many :buildings
end
