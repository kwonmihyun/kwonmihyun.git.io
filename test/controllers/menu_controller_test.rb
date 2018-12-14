require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get menu_about_url
    assert_response :success
  end

  test "should get services" do
    get menu_services_url
    assert_response :success
  end

  test "should get blog" do
    get menu_blog_url
    assert_response :success
  end

  test "should get contact" do
    get menu_contact_url
    assert_response :success
  end

end
