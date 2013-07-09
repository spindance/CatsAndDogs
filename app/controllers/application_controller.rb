class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.new(1)
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
