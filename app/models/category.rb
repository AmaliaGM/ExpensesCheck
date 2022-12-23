class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  validates :name, presence: true, uniqueness: { scope: :user }
  validates :icon, presence: true
end
