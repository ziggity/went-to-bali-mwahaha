class Product < ApplicationRecord
  has_many :order_items
  validates :price, :presence => true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :name, :presence => true
  validates :description, :presence => true
end
