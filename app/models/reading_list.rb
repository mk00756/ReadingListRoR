class ReadingList < ActiveRecord::Base
    has_many :books, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true
end
