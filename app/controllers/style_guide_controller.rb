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

  def letsencrypt
    # use your code here, not mine
    render text: "Oe_yiYBNZh4NpQhjcdPdxfnp0EO7yFy1q1Cxlpyy714.flfRr-d6fqzwJvHDv40-wFXmAl3ujte_TlVqOCyxokU"
  end

end
