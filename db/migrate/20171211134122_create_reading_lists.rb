class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
