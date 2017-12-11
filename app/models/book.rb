class Book < ActiveRecord::Base
  belongs_to :reading_list
  validates :title, :reading_list, :author, presence: true
end
