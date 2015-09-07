class Bug < ActiveRecord::Base
  belongs_to :user
  has_many :comments


  enum :status [:unread, :processing, :done]
end
