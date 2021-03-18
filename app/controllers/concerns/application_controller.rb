class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, raise: false

  include ::ActionController::Cookies

  after_action :short_session

  Rails.application.config.action_controller.forgery_protection_origin_check = false

  def short_session
    request.session_options = request.session_options.dup
    request.session_options[:expire_after] = 14.days
    request.session_options.freeze
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end