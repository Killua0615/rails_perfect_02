class ApplicationController < ActionController::Base
  rescue_from LoginFailed, with: :login_failed

  def login_failed
    render template: 'errors/login_failed', status: 401
  end
end
