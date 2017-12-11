class ReadingList < ActiveRecord::Base
    belongs_to :user
    has_many :books, dependent: :destroy
    validates :title, presence: true
    validates :title, uniqueness: true
    
    scope :user_reading_lists, ->(user) { where(['user_id = ?', user.id]) }
end
