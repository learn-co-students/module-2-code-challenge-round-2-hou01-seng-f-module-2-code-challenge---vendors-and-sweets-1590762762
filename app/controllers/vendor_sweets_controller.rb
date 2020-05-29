class VendorSweetsController < ApplicationController
  before_action :current_vendorSweet, only: [:show]
  
  def new
    @vendorSweet=VendorSweet.new 
    @vendors=Vendor.all 
    @sweets=Sweet.all
  end
  
  def create
    vendorSweet=VendorSweet.new(vendorSweet_params)
    if vendorSweet.valid?
      vendorSweet.save
      redirect_to vendor_path(vendorSweet.vendor)
    else
      flash[:errors]=vendorSweet.errors.full_messages
      redirect_to "/vendorSweet/new"
    end 


  end

  def current_vendorSweet
    @vendorSweet= VendorSweet.find(params[:id])
  end


  def vendorSweet_params
    params.require(:vendorSweet).permit(:vendor_id, :sweet_id, :price)
  end
end
