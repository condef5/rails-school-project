class CreateEditorials < ActiveRecord::Migration[7.1]
  def change
    create_table :editorials do |t|
      t.string :name

      t.timestamps
    end
  end
end
