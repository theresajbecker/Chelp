class ApplicationController < ActionController::Base

	#protect_from_forgery with: :exception
	
	helper_method :current_user
	helper_method :current_user_picture

	def current_user
		@current_user ||= User.find(session[:user]) if session[:user]
	end

	def current_user_picture(size)
		return current_user.picture.gsub(/\Ahttps:/, '').gsub(/\d+\z/, "#{size}")
	end

end
