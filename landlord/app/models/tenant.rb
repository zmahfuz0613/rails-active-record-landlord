class Tenant < ApplicationRecord
  belongs_to :apartment, required: false
end
