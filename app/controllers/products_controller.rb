class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:success] = "Add Product successfully!"
			logger.debug "add product ok"
			redirect_to products_path
		else
			@feed_items = []
			render 'static_pages/home'
		end
	end

	 def destroy
     	Product.find(params[:id]).destroy
     	flash[:success] = "Product deleted"
     	redirect_to products_url
     end

private
	def product_params
		params.require(:product).permit(:price, :description, :ProductId, :image)
	end

end
