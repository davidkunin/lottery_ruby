require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get home_homepage_url
    assert_response :success
  end

  test "should get lotterypage" do
    get home_lotterypage_url
    assert_response :success
  end

end
