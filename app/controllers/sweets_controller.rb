class SweetsController < ApplicationController
  before_action :current_sweet, only: [:show]
 
  def index
    @sweets = Sweet.all
  end

  def show

  end

  def current_sweet
    @sweet = Sweet.find(params[:id])
  end 
 
end
