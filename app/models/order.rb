class Order < ApplicationRecord
  belongs_to :user
  belongs_to :carted_product
  has_many :products, through: :carted_products

  def subtotal
    carted_products.each do |carted_product|
      price = carted_product.product.price
      quantity = carted_product.quantity
      return price * quantity
    end
  end
  
  
end
