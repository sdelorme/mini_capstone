class AddStockColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :stock, :integer
  end
end
