class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create  
    @product = Product.new(product_params)
    
    @product.save
      redirect_to @product
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    
    redirect_to products_path
  end
  
  private 
    def product_params
      params.require(:product).permit(:title,:description,:option,:category1,:category2)
    end
  
end
