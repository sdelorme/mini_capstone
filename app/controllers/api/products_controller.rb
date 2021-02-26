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

  def create
    @product = Product.new(
      name: Faker::Commerce.product_name, 
      price: Faker::Number.number(digits: 2), 
      image_url: Faker::Internet.url, 
      description: Faker::Coffee.notes
    )
    @product.save
    render 'show.json.jb'
  end
end
