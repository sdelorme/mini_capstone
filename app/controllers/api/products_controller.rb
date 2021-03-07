class Api::ProductsController < ApplicationController
  def index
  #   if params[:discount] == "true"
  #     @index = Product.where("price < 10")
  #   elsif params[:sort] && params[:sort_order] 
  #     @index = @index.order({params[:sort] => params[:sort_order]})
  #   else
      @index = Product.all
    # end
    render 'index.json.jb'
  end

  def show 
    @product = Product.find_by(id: params[:id])  
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url], 
      description: params[:description])
    @product.save

    if @product.save
      render 'show.json.jb'
      else
        render json: {errors: @product.errors.full_messages}
    end
  end
    
  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url  
    @product.description = params[:description] || @product.description 
    @product.save
    if @product.save
      render 'show.json.jb'
    else
      render json: {errors: @product.errors.full_messages}
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "this product no longer exists"}
  end
end
