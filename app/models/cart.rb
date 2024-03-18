class Cart < ApplicationRecord
  belongs_to :user
  has_many :orderables

  def total
    orderables.to_a.sum { |orderable| orderable.total }
  end

  def count
    orderables.to_a.sum { |orderable| orderable.quantity }
  end
end
