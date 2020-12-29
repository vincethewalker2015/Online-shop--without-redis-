class CartsController < ApplicationController
  before_action :initialize_cart

	def add
		@cart.add_item params[:id]
		session["cart"] = @cart.serialize
		product = Product.find params[:id]
		product.update_columns(stock_quantity: product.stock_quantity - 1)
		redirect_to :back, notice: "Added #{product.name} to cart."
	end

	def show

	end

	def checkout
		@order_form = OrderForm.new user: User.new
		@client_token = Braintree::ClientToken.generate
	end


  def remove
      cart = session['cart']
      item = cart['items'].find { |item| item['product_id'] == params[:id] }

      product = Product.find(item['product_id'])
      product.update_columns(stock_quantity: product.stock_quantity + 1)

      if item
          cart['items'].delete item
      end
    redirect_to cart_path
  end

end
