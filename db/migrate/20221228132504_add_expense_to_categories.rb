class AddExpenseToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :expense, null: false, foreign_key: true
  end
end
