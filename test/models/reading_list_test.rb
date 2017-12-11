require 'test_helper'

class ReadingListTest < ActiveSupport::TestCase
  
  setup do
    @user = users(:one)
  end
  
  test "should not save empty list" do
    readingList = ReadingList.new
    readingList.save
    refute readingList.valid?
  end
  
  test "should save valid list" do
    readingList = ReadingList.new
    readingList.title = "My Reading List"
    readingList.description = "This is my new reading list for this summer."
    readingList.user = @user
    readingList.save
    assert readingList.valid?
  end
  
  test "should not save duplicate list title" do
    readingList1 = ReadingList.new
    readingList1.title = "My Reading List"
    readingList1.description = "This is my new reading list for this summer."
    readingList1.user = @user
    readingList1.save
    assert readingList1.valid?
    
    readingList2 = ReadingList.new
    readingList2.title = "My Reading List"
    readingList2.description = "This is my new reading list for this summer."
    readingList2.user = @user
    readingList2.save
    refute readingList2.valid?
  end
end
