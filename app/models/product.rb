class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories

  def is_discounted?    
    if price < 10
      return true
    else
      return false
    end
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
end
