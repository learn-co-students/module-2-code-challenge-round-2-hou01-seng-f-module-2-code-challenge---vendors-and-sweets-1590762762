require 'test_helper'

class VerndorSweetControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get verndor_sweet_new_url
    assert_response :success
  end

  test "should get create" do
    get verndor_sweet_create_url
    assert_response :success
  end

end
