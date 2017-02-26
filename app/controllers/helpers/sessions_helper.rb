
module SessionsHelper
  def authorized_user
    redirect_to spree_login_path unless spree_current_user
  end
end