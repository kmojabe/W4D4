class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  def log_in!(user)
    sessions[:session_token] = user.reset_session_token!
  end
end
