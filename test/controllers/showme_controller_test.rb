require 'test_helper'

class ShowmeControllerTest < ActionDispatch::IntegrationTest
  test "should get board" do
    get showme_board_url
    assert_response :success
  end

  test "should get board_write" do
    get showme_board_write_url
    assert_response :success
  end

  test "should get board_write_form" do
    get showme_board_write_form_url
    assert_response :success
  end

end
