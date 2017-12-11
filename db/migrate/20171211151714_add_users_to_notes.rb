class AddUsersToNotes < ActiveRecord::Migration
  def up
    add_reference :reading_lists, :user, index:true
    ReadingList.reset_column_information
    user = User.first
    
    ReadingList.all.each do |reading_list|
      reading_list.user_id = user.id
      reading_list.save!
    end
    
    change_column_null :reading_lists, :user_id, false
    add_foreign_key :reading_lists, :users
  end
  
  def down
    remove_foreign_key :reading_lists, :users
    remove_reference :reading_lists, :user, index: true
  end
end
