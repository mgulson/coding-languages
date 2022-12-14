require "test_helper"

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get languages_create_url
    assert_response :success
  end
end
