class BasketsController < ApplicationController
	
	# add somethings to the basket
	def create
		# find the product from our url
		@product = Product.find(params[:product_id])

		# then add it to our basket
		basket.add(@product.id)

		flash[:success] = "Added #{@product.title} to basket"

		redirect_to product_path(@product)

	end

	# remove from the basket
	def destroy
		# find the product from our url
		@product = Product.find(params[:product_id])

		# remove from basket
		basket.delete(@product.id)

		flash[:success] = "Removed #{@product.title} from your basket"

		redirect_to product_path(@product)

	end

end
