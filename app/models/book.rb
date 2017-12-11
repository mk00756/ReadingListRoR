class Book < ActiveRecord::Base
  belongs_to :reading_list
  validates :title, :reading_list, :author, presence: true
  
  scope :user_books, ->(user) { joins(:reading_list).where(['user_id = ?', user.id]) }
end
