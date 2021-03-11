class Api::OrdersController < ApplicationController
  before_action :authenticate_user 

  def create
    @product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity].to_i * @product.price
    # below is however many user puts in for quant and taking the tax of one of those products from product tax method
    calculated_tax = params[:quantity].to_i * @product.tax
    calculated_total = calculated_subtotal + calculated_tax
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    @order.save
    render 'show.json.jb'
  end
  def index
    # @orders = Order.where(user_id: current_user.id)
    @orders = current_user.orders
    render 'index.json.jb'
  end
  def show
    @order = current_user.orders.find_by(user_id: [current_user.id])  
    render 'show.json.jb'
  end
end
