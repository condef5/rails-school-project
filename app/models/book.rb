class Book < ApplicationRecord
  belongs_to :editorial
  belongs_to :category
  belongs_to :author

  def self.search(params)
    params[:query].blank? ? all : where(
      "title LIKE ?", "%#{sanitize_sql_like(params[:query])}%"
    )
  end
end
