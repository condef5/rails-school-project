class AddNewFieldsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :price, :decimal
    add_column :books, :stock, :integer

    remove_column :books, :author, :string

    add_column :books, :author_id, :integer
    add_foreign_key :books, :authors

    add_column :books, :editorial_id, :integer
    add_foreign_key :books, :editorials

    add_column :books, :category_id, :integer
    add_foreign_key :books, :categories
  end
end
