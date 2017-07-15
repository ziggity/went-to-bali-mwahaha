class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :password, length: { minimum: 5 }
  validates :password, :format => { :with => /[a-z]{1}/i }
  validates :password, :format => { :with => /\d{1}/ }

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
