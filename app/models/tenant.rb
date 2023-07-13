class Tenant < ApplicationRecord
  belongs_to :unit
  has_many :rent_payments
  has_many :service_payments
  has_many :utility_payments
end
