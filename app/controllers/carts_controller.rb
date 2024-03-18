class CartsController < ApplicationController
  def show
  end

  def create
    @book = Book.find_by(id: params[:book_id])
    quantity = params[:quantity].to_i
    current_orderable = @cart.orderables.find_by(book_id: @book.id)

    if current_orderable && quantity > 0
      current_orderable.update(quantity: current_orderable.quantity + quantity)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(book: @book, quantity:)
    end

    flash.now[:notice] = "El libro `#{@book.title}` fue añadido al carrito."

    render turbo_stream: [
      turbo_stream.replace(:flash, partial: "shared/flash"),
      turbo_stream.replace(:cart, partial: "carts/orderable", locals: { cart: @cart }),
      turbo_stream.replace(:total_cart, partial: "carts/total", locals: { cart: @cart }),
      turbo_stream.replace(:cart_count, partial: "carts/count", locals: { cart: @cart }),
    ]
  end

  def destroy
    Orderable.find_by(id: params[:orderable_id]).destroy

    flash.now[:alert] = "El libro fue eliminado del carrito."

    render turbo_stream: [
      turbo_stream.replace(:flash, partial: "shared/flash"),
      turbo_stream.replace(:cart, partial: "carts/orderable", locals: { cart: @cart }),
      turbo_stream.replace(:total_cart, partial: "carts/total", locals: { cart: @cart }),
      turbo_stream.replace(:cart_count, partial: "carts/count", locals: { cart: @cart }),
    ]
  end
end
