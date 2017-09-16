class BrandsController < ApplicationController
  
  def index
    @brands = policy_scope(Brand)
  end

end
