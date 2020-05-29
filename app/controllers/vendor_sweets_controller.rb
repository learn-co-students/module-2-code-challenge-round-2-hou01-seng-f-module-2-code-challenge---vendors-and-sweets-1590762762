class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)
        if @vendor_sweet.valid?
            @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor)
        else
          flash[:errors] = @vendor_sweet.errors.full_messages
          redirect_to new_vendor_sweets_path
        end
    end

    def vendor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
        
end
