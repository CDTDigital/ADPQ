class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized_user
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end
require 'spree/base_controller'
require 'controller_extensions'
