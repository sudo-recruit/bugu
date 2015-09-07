class Bug < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  
  enum status: {unread: 1, in_process: 2, done: 3}
end
