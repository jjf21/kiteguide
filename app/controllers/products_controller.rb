class ProductsController < ApplicationController
  def index
    policy_scope(Product)
  end

  def new
    @product = Product.new
  end

  def create

    product = Product.new(product_params)
    authorize product


    if product.save
      flash[:notice] = "Matos ajouté"
      redirect_to product_path(product)
    else
      flash[:alert] = "Impossible de créer le matos"
      redirect_to product_path(product)
    end

  end

  private

  def product_params
    params.require(:product).permit(:brand_id,:rating,:user_id)
  end
end
