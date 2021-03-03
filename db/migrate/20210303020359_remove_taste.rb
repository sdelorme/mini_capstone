class RemoveTaste < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :tasteyyyyyyyyyyyy, :text
  end
end
