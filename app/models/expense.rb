class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :title, :price, :category_id, :user_id, presence: true
  validates_presence_of :category
end
