class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def avg_price
        sum = 0
        if self.vendor_sweets.length != 0
            self.vendor_sweets.each do |vs|
                sum += vs.price
            end
            result = sum / self.vendor_sweets.length
        else
            result = 0
        end
        result
    end
end
