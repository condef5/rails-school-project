class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  before_action :initialize_cart

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.admin?
      motor_admin_path
    elsif session[:cart_id].present?
      carts_path
    else
      stored_location_for(resource) || root_path
    end
  end

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
