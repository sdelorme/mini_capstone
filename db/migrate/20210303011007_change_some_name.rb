class ChangeSomeName < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :taste, :tasteyyyyyyyyyyyy
  end
end
