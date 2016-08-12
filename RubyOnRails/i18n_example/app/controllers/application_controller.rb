class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locate

  def set_locate
    I18n.locale = params[:lang] || I18n.default_locale
  end
end
