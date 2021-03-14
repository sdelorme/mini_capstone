class Order < ApplicationRecord
  belongs_to :user
  belongs_to :carted_product
end
