class Category < ApplicationRecord
  belongs_to :user
  has_many :expenses

  validates :name, presence: true
  validates :icon, :user_id, presence: true
end
