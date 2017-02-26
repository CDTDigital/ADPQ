class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorized_user
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end

Spree::UserSessionsController.class_eval do
  skip_before_action :authorized_user, only: :new
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end

Spree::UserRegistrationsController.class_eval do
  skip_before_action :authorized_user
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end

Spree::UserPasswordsController.class_eval do
  skip_before_action :authorized_user, only: :new
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end

