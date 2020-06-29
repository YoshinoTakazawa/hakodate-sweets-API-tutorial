class Sweet < ApplicationRecord
  belongs_to :shop
  has_many :sweet_categories, dependent: :destroy
  has_many :categories, through: :sweet_categories
end
