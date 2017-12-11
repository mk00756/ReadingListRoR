class AddIndexToReadingList < ActiveRecord::Migration
  def change
    add_index :reading_lists, :title, unique: true
  end
end
