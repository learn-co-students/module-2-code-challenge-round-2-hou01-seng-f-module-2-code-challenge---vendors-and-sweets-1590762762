class Vendor < ApplicationRecord
  has_many :vendor_sweets
  has_many :sweets, through: :vendor_sweets

  # def total_avg_price
  #   total = 0
  #   self.vendor_sweets.each do |sweet|
  #     total += sweet.price
  #   end
  #   total/self.vendor_sweets.length
  # end
end
