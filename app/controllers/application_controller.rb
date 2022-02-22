class ApplicationController < ActionController::Base

  include ApplicationHelper

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

# ActiveRecord ::RecordNotFound in Courses#index  Couldn't find User with id=1
  #def current_user
    #@current_user ||= User.find(session[:user_id]) if session[:user_id]
  #end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform that action."
      redirect_to login_path
    end
  end



end
