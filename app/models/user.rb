class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :bugs
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:google_oauth2]
   
   def developer?
     return self.role == 0
   end
   
   def user?
     return self.role == 1
   end

   def self.from_omniauth(access_token)
     data = access_token.info
     user = User.where(:email => data["email"]).first
     unless user
       user = User.create(name: data["name"],
            email: data["email"],
            password: Devise.friendly_token[0,20])
     end
     user
   end 
end
