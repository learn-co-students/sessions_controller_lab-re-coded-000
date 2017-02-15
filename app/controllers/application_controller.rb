class ApplicationController < ActionController::Base
	def hello
		if !session[:name] then
			render 'sessions/new'
		end
	end
end