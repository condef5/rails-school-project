class HomeController < ApplicationController
  def index
    @books = Book.all.includes(:author, :category, :editorial).take(8)
  end
end
