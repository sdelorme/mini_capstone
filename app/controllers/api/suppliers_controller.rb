class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render 'index.json.jb'
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end
end
