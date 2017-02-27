require 'test_helper'

class StyleGuideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get style_guide_url
    assert_response :redirect
  end

  test "should get colors" do
    get style_guide_colors_url
    assert_response :success
  end

  test "should get buttons and iconography" do
    get style_guide_buttons_iconography_url
    assert_response :success
  end

  test "should get forms" do
    get style_guide_forms_url
    assert_response :success
  end

  test "should get typography" do
    get style_guide_typography_url
    assert_response :success
  end

  test "should get tables" do
    get style_guide_tables_url
    assert_response :success
  end

end
