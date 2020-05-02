class ApplicationController < ActionController::Base
  def authenticate_admin_user!
    authenticate_or_request_with_http_basic("言葉") do |name, password|
      secret = ENV['SECRET_KEY_BASE']
      raise if secret.blank?
      name == secret && password == secret
    end
  end
end
