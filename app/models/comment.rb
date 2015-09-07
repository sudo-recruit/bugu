class Comment < ActiveRecord::Base
  belongs_to :bug
  belongs_to :user
  
  enum change_status: {unread: 0, in_process: 1, done: 2}
  
end
