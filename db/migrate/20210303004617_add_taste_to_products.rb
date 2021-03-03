class AddTasteToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :taste, :string
  end
end
