class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def hello
  	render html: "hallo new staff member"
  end

  private

  # confirms a logged-in user
  def logged_in_user
    unless loged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
