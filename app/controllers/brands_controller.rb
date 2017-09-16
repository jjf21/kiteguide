class BrandsController < ApplicationController
  
  def index
    @brands = policy_scope(Brand)
  end

  def show
    @brand = Brand.find(params[:id])
    authorize @brand
  end

end
