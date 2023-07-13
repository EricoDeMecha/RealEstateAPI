class Unit < ApplicationRecord
  belongs_to :building
  has_many :tenants
end
