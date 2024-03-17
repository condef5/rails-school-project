class HomeController < ApplicationController
  def index
    @books = Book.search(params).includes(:author, :category, :editorial)
  end
end
