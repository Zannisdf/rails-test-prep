class ProductsController < ApplicationController
  before_action :set_product, only: %i[show destroy edit update]

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

  def show; end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product saved!'
    else
      redirect_to root_path, alert: 'An error has ocurred, please try again.'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path, notice: 'Product was deleted.'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
