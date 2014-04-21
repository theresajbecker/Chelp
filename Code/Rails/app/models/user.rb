class User < ActiveRecord::Base
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
end

      