class VendorsController < ApplicationController
  before_action :current_vendor, only: [:show]
  def index
    @vendors = Vendor.all
  end

  def show
    
  end

  def current_vendor
    @vendor = Vendor.find(params[:id])
  end 


end
