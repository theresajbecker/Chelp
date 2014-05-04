
class User < ActiveRecord::Base
include ActiveModel::Validations

	
  validates :email, :password, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true, :on => :create

	attr_accessible :oauth_provider, :oauth_uid, :oauth_token, :oauth_expires_at, :first_name, :last_name, :gender, :picture, :email, :password, :permissions

	def self.from_oauth(auth)
		User.where(:oauth_provider => auth.provider, :oauth_uid => auth.uid).first_or_initialize do |user|

	      user.oauth_provider = auth.provider
	      user.oauth_uid = auth.uid
	      user.oauth_token = auth.credentials.token
	      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	      user.first_name = auth.info.first_name
	      user.last_name = auth.info.last_name
	      user.gender = ""
	      user.picture = auth.info.image
	      user.email = auth.info.email
	      user.password = "NA"
	      user.permissions = "User"

	      user.save!
	    end
	end

	def self.from_form(params)
		User.create!(
	      :oauth_provider => "",
	      :oauth_uid => "",
	      :oauth_token => "",
	      :oauth_expires_at => "",
	      :first_name => params[:first_name],
	      :last_name => params[:last_name],
	      :gender => "",
	      :picture => "",
	      :email => params[:email],
	      :password => params[:password_one],
	      :permissions => "User")
	end

	def get_picture(size)
		if self == nil || self.picture == nil || self.picture == ""
			return "http://www.pinkstarmarketing.com/wp-content/uploads/2014/04/null.jpg"
		else
			return self.picture.gsub(/\Ahttps:/, '').gsub(/\d+\z/, "#{size}")
		end
	end

end

      
