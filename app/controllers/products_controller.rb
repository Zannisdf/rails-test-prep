class ProductsController < ApplicationController
  def index
    @products = Product.order(:id)
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    if product.save
      redirect_to product, notice: 'Product saved!'
    else
      redirect_to root_path, alert: 'An error has ocurred, please try again.'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path, notice: 'Product was deleted.'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description)
  end
end
