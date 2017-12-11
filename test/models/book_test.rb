require 'test_helper'

class BookTest < ActiveSupport::TestCase
  setup do
    @reading_list = reading_lists(:one)
  end
  
  test "should not save empty book" do
    book = Book.new
    book.save
    refute book.valid?
  end
  
  test "should save valid book" do
    book = Book.new
    
    book.title = "Somebook"
    book.author = "Someauthor"
    book.reading_list = @reading_list
    book.save
    assert book.valid?
  end
end
