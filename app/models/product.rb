class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: true, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}

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
