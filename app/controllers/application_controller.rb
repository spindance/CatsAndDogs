class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.new(1)
  end
end
