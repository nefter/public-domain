# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index; end
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: %i[avatar avatar_cache remove_avatar])
  #   devise_parameter_sanitizer.permit(:sign_in, keys: %i[avatar avatar_cache remove_avatar])
  #   devise_parameter_sanitizer.permit(:account_update, keys: %i[avatar avatar_cache remove_avatar])
  # end
end
