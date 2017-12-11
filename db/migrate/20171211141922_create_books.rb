class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :reading_list, index: true, foreign_key: true, null: false
      t.string :title, null: false
      t.string :author, null: false

      t.timestamps null: false
    end
  end
end
