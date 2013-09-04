class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    params['user_id'].blank? ? User.new(1) : User.new(params['user_id'].to_i)
  end

  def with_service(service_class)
    begin
      @service ||= service_class.new
      yield(@service)
    ensure
      @service.close
    end
  end
end
