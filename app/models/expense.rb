class Expense < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :amount, presence: true
  validates_presence_of :categories
end
