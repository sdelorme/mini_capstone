class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: Product.find_by(id: params[:product_id]).price,
      tax: Product.find_by(id: params[:product_id]).tax,
      total: Product.find_by(id: params[:product_id]).total
    )
    @order.save
    render 'show.json.jb'
  end
  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render 'index.json.jb'
    else
      render json: {message: "Nice try, you have no orders"}
    end
  end
end
