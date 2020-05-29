class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :price, presence: true ,numericality: {only_integer: true, greater_than_or_equal_to: 1}
  validates_uniqueness_of :vendor_id, :scope => [:sweet_id]

  
end
