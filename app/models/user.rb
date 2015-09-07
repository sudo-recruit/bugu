class User < ActiveRecord::Base
  has_many :bugs
  has_many :comments

  enum role: [:user, :developer]
end
