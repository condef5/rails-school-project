class Cart < ApplicationRecord
  belongs_to :user
  has_many :orderables

  def total
    orderables.to_a.sum { |orderable| orderable.total }
  end

  def delta
    puts "Cart delta"
  end
end
