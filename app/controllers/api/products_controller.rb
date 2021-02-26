class Api::ProductsController < ApplicationController
  def index
    @index = Product.all
    render 'index.json.jb'
  end

  def show
    id = params[:id].to_i
    @product = Product.find_by(id: id)
    render 'show.json.jb'
  end
end
