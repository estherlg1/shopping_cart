class OrderLinesController < ApplicationController
  before_action :authenticate_user!

  def create
    product_id = params[:product_id]
    OrderLine.create(cart_id: current_user.cart.id, product_id: product_id)
    redirect_to cart_path(current_user.cart.id)
  end

  def destroy
    product_id = params[:product_id]
    current_user.cart.order_lines.find_by(product_id: product_id).delete
    redirect_to cart_path(current_user.cart.id)
  end


end
