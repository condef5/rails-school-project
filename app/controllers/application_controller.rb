class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :initialize_cart

  def initialize_cart
    @cart ||= Cart.find_by(user: current_user)

    if @cart.nil?
      @cart = Cart.create(user: current_user)
    end
  end
end
