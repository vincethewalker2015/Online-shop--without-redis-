class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :initialize_cart
  protect_from_forgery with: :exception
  before_action :find_categories
  before_action :find_designers


  def initialize_cart
  	@cart = Cart.build_from_hash session
  end

  def find_categories
  	@categories = Category.all
  end

  def find_designers
    @designers = Designer.all
  end

  def authenticate_admin!
    authenticate_user!

    unless current_user.admin?
      redirect_to root_path, alert: "You are not allowed to perform that operation."
    end
  end
end

