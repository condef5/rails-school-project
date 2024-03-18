class Book < ApplicationRecord
  belongs_to :editorial
  belongs_to :category
  belongs_to :author

  scope :filter_by_author, ->(value) { where(author_id: value) if value.present? }
  scope :filter_by_editorial, ->(value) { where(editorial_id: value) if value.present? }
  scope :filter_by_category, ->(value) { where(category_id: value) if value.present? }
  scope :search, ->(query) {
    query.blank? ? all : where("title LIKE ?", "%#{sanitize_sql_like(query)}%")
  }
end
