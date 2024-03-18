class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :initialize_cart

  def initialize_cart
    if user_signed_in?
      @cart ||= Cart.find_by(user: current_user)
      if session[:cart_id] && @cart.nil?
        @cart = Cart.find_by(id: session[:cart_id])
      elsif @cart.nil?
        @cart = Cart.create(user: current_user)
      end
      return
    end

    @cart ||= Cart.find_by(id: session[:cart_id])

    if @cart.nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end
