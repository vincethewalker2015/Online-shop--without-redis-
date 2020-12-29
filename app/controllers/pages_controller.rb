class PagesController < ApplicationController
  
  def index
    @products = Product.all.order(created_at: :desc).group_by(&:category_id)
  end

  def about
  end

  def location
  end

  def stockists

  end

  def help
  end
end