class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
   redirect_to("/login") if ! logged_in?
  end
  private
  def logged_in?
    session[:name] ? true : false
  end
end
