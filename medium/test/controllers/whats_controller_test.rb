require 'test_helper'

class WhatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @what = whats(:one)
  end

  test "should get index" do
    get whats_url
    assert_response :success
  end

  test "should get new" do
    get new_what_url
    assert_response :success
  end

  test "should create what" do
    assert_difference('What.count') do
      post whats_url, params: { what: { body: @what.body, idea_id: @what.idea_id, user_name: @what.user_name } }
    end

    assert_redirected_to what_url(What.last)
  end

  test "should show what" do
    get what_url(@what)
    assert_response :success
  end

  test "should get edit" do
    get edit_what_url(@what)
    assert_response :success
  end

  test "should update what" do
    patch what_url(@what), params: { what: { body: @what.body, idea_id: @what.idea_id, user_name: @what.user_name } }
    assert_redirected_to what_url(@what)
  end

  test "should destroy what" do
    assert_difference('What.count', -1) do
      delete what_url(@what)
    end

    assert_redirected_to whats_url
  end
end
