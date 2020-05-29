class VendorSweetsController < ApplicationController
  def new
    @vendor_sweet = VendorSweet.new
    @vendor = Vendor.all 
    @sweet = Sweet.all
  end

  def index
    @vendor_sweets = VendorSweet.all
  end

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.valid?
    @vendor_sweet.save
    redirect_to vendor_path(@vendor_sweet.vendor)
    else 
      flash[:error] = @vendor_sweet.errors.full_messages
    redirect_to "/vendor_sweets/new"
  end
end

  

  private 
  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:price, :vendor_id, :sweet_id)
  end
end
