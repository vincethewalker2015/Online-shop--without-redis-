class Order < ApplicationRecord
  belongs_to :user, dependent: :destroy 
  has_many :order_items, dependent: :destroy 

  def total_price
  	order_items.inject(0) { |sum, item| sum + item.total_price }
  end

  STATES = [
  	[ "New", :new ], 
  	[ "Dispatched", :dispatched ]

  ]
end
