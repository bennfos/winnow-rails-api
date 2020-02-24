class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token, raise: false

  include ::ActionController::Cookies

  after_filter :short_session

  def short_session
    request.session_options = request.session_options.dup
    request.session_options[:expire_after] = 14.days
    request.session_options.freeze
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end