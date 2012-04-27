class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable,:rememberable, :confirmable, :lockable,:registerable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable,  :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
