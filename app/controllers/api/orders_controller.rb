class Api::OrdersController < ApplicationController
  def create
    if current_user
      @product = Product.find_by(id: params[:product_id])
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: Product.find_by(id: params[:product_id]).price,
        tax: @product.tax,
        total: @product.total
      )
      @order.save
      render 'show.json.jb'
    else
      render json: {message: "Sign in or signup to create an order!"}
    end
  end
  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render 'index.json.jb'
    else
      render json: {message: "Nice try, you have no orders"}
    end
  end
  def show
    @order = Order.find_by(id: params[:id])  
    render 'show.json.jb'
  end
end
