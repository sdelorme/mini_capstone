class Api::ProductsController < ApplicationController
  def index
    @index = Product.all
    render 'index.json.jb'
  end

  def show
    if params[:id].to_i < Product.count
      @product = Product.find_by(id: params[:id])  
    else
      @product = Product.new
    end
    render 'show.json.jb'
  end
end
