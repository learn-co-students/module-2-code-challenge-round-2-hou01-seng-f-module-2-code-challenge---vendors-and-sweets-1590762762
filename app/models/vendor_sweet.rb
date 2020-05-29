class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor

    validates :price, presence: true
    validates :price, numericality:{only_integer: true, greater_than: 0}
    # validates :vendor, uniqueness: {scope: :sweet_id}
end
