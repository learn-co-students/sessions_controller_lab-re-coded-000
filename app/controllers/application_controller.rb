class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
	def hello
		if session[:name]
			redirect_to controller: 'sessions', action: 'new'
		end
	end
end