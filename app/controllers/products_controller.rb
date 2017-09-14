class ProductsController < ApplicationController
  
  def index
    @products = policy_scope(Product)
  end

  def new
    @product = Product.new
    authorize @product
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def create

    product = Product.new(product_params)
    authorize product

    if product.save
      flash[:notice] = "Matos ajouté"
      redirect_to product_path
    else
      flash[:alert] = "Impossible de créer le matos"
      redirect_to products_path
    end

  end

  private

  def product_params
    params.require(:product).permit(:brand_id, :model, :gear_type, :year, :photo)
  end
end
