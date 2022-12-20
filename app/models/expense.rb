class Expense < ApplicationRecord
    validates :category_id, presence: true
    belongs_to :category
end
