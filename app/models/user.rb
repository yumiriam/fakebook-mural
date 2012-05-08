class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :posts
	has_many :comments

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  attr_accessor :login
  attr_accessible :login
  # attr_accessible :title, :body
  
	protected
  def self.find_first_by_auth_conditions(warden_conditions)
		conditions = warden_conditions.dup
		if reset_password_token = conditions[:reset_password_token]
		  where(conditions).where(["reset_password_token = ?", reset_password_token]).first
		else
		  login = conditions.delete(:login).downcase
		  #where(conditions).where(["lower(username) = :value OR lower(email) = :value", 
		  #		{ :value => login.downcase }]).first
		  where(conditions).where(["lower(username) = :value", { :value => login.downcase }]).first
		end
	end
end
