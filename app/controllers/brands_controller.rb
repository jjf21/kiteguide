class BrandsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @brands = policy_scope(Brand)
  end

  def show
    @brand = Brand.find_by(name: params[:name])
    authorize @brand

    @filters = @brand.products.distinct.pluck(:gear_type)
  end

end
