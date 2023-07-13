class Building < ApplicationRecord
  belongs_to :owner
  has_many :units
end
