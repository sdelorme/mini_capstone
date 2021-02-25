class Api::ProductsController < ApplicationController
  def index
    @index = Product.all
    render 'index.json.jb'
  end

  def info
    id = params[:id].to_i
    product = Product.find_by(id: id)
    @message = product
    render 'product.json.jb'
  end
end
