class OrderItem < ApplicationRecord
  belongs_to :order, dependent: :destroy 
  belongs_to :product, dependent: :destroy 

  def total_price
  	self.quantity * self.product.price
  end
end
