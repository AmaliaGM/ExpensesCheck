class Expense < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :title, :price, :category_id, :user_id, presence: true
  validates_presence_of :category
end
