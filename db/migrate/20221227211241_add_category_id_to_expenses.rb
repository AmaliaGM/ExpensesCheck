class AddCategoryIdToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :category_id, :integer
  end
end
