class HomeController < ApplicationController
  def index
    @books = Book.search(filter_params[:query])
      .filter_by_category(filter_params[:category_ids])
      .filter_by_author(filter_params[:author_ids])
      .filter_by_editorial(filter_params[:editorial_ids])
      .includes(:author, :category, :editorial)
  end

  private

  def filter_params
    params.permit(:query, category_ids: [], author_ids: [], editorial_ids: [])
  end
end
