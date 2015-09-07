class Bug < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  
  enum status: {unread: 0, in_process: 1, done: 2}

  validates :title, :body, presence: true
end
