class OrdersController < ApplicationController
  def new
  	@order = Order.new
  	build_order_from_basket
  end

  def create
  	@order = Order.new(params[:order])
  	build_order_from_basket

  	if @order.save_with_stripe
  		basket.clear
  		flash[:success] = "High fives - We processed your order!"

      OrderMailer.admin(@order).deliver
      OrderMailer.customer(@order).deliver
  	else
  		render "new"
  	end
  end


def build_order_from_basket
	basket.each do |item|

  		@product = Product.find(item)

  		@order.order_products.build(
  			product_id: @product.id,
  			price_in_pence: @product.price_in_pence,
  			quantity: 1
  			)
  	end

end

end
