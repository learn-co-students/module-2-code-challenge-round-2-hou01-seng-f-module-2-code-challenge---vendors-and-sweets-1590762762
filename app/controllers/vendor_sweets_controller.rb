class VendorSweetsController < ApplicationController
  
  def new
    @vendor_sweet = VendorSweet.new
    @sweets = Sweet.all
    @vendors = Vendor.all
  end

  def show
    @vendor_sweet = VendorSweet.find(params[:id])
  end
  
  def create
    vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if vendor_sweet.valid?
      vendor_sweet.save
      redirect_to vendor_path(vendor_sweet.vendor_id)
    else
      # byebug
      flash[:errors] = vendor_sweet.errors.full_messages
      redirect_to new_vendor_sweet_path
    end
  end
  
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end
end
