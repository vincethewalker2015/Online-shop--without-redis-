class Category < ApplicationRecord
  has_many :products
	has_many :pages
end
