class OrdersController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      order = Order.create(user: current_user, total: @cart.total)

      @cart.orderables.each do |orderable|
        OrderDetail.create(
          order: order,
          book: orderable.book,
          quantity: orderable.quantity,
          price: orderable.book.price
        )
      end

      @cart.destroy
      session[:cart_id] = nil
    end

    redirect_to root_path, notice: "Orden creada exitosamente!"
  end
end
