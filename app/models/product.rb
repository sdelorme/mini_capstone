class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      discount = true
    else
      discount = false
    end
    return discount
  end

  def tax
    price * 0.09
  end
  def total
    price + tax
  end
end
