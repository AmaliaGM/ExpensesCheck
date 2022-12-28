class AddIconToCategory < ActiveRecord::Migration[7.0]
    def change
      add_column :categories, :icon, :string, unique: true
      add_column :categories, :user_id, :integer, unique: true
    end
  end