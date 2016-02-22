class ApplicationController < ActionController::Base
	include ApplicationHelper
	
	def authorise
		unless logged_in?
			store_location
			redirect_to login_path, :notice=> "Please sign in to access this page"
		end
		end

	#def logged_in?
	#	if session[:user_id].nil?
	#		return		
	#	else
	#		@current_user=User.find_by_id(session[:user_id])
	#	end
	#end
  
end
