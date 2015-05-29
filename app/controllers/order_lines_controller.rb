class OrderLinesController < ApplicationController
  before_action :authenticate_user!

  def create(:product_id)
    OrderLine.create(cart_id: current_user.cart.id, product_id: :product_id)
  end

  def destroy
  end


end
