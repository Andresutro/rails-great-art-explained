require "test_helper"

class ParticipantsControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get participants__form_url
    assert_response :success
  end

  test "should get _participant" do
    get participants__participant_url
    assert_response :success
  end
end
