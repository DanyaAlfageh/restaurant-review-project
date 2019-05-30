require 'test_helper'

class ResturantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resturants_index_url
    assert_response :success
  end

  test "should get show" do
    get resturants_show_url
    assert_response :success
  end

end
