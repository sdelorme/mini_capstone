class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    status: "carted"
    )
    @carted_product.save
    render 'show.json.jb'
  end
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render 'index.json.jb'
  end

  def destroy
    @carted_products = current_user.carted_products.where(id: params[:id])
    @carted_products.each do |carted_product|
      carted_product.update(status: "removed")
    end
  end
end
