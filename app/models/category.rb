class Category < ApplicationRecord
  has_many :sweet_categories, dependent: :destroy
  has_many :sweets, through: :sweet_categories
end
