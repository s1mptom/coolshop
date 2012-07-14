class OrdersController < ApplicationController

  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, :notice => "Your cart is empty"
      return end
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    @order.add_line_items_from_cart(current_cart)
    if @order.save
      redirect_to root_path, :notice => 'Thank you for your order.'
    else
      render :action => "new"
    end
  end
end