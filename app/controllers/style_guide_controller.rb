class StyleGuideController < ApplicationController
  layout 'style_guide_layout'
  skip_before_action :authorized_user
  def index
    redirect_to action: 'buttons_iconography'
  end

  def colors

  end

  def buttons_iconography

  end

  def typography

  end

  def forms

  end

  def tables

  end
end
