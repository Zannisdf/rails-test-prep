class ProductsController < ApplicationController
  def index
    @product = Product.new
  end

  def create
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :age)
  end
end
