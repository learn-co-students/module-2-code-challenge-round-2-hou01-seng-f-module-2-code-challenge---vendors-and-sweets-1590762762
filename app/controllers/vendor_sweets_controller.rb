class VendorSweetsController < ApplicationController
    def new
        @vendorsweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendorsweet = VendorSweet.new(vs_params)
    #    byebug
        if @vendorsweet.valid? 
            @vendorsweet.save
            redirect_to "/vendors/#{@vendorsweet.vendor_id}"
        else
            redirect_to "vendor_sweets/new"
        end
    end

    private
    def vs_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end
