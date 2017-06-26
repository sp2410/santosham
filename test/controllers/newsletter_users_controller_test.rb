require 'test_helper'

class NewsletterUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newsletter_user = newsletter_users(:one)
  end

  test "should get index" do
    get newsletter_users_url
    assert_response :success
  end

  test "should get new" do
    get new_newsletter_user_url
    assert_response :success
  end

  test "should create newsletter_user" do
    assert_difference('NewsletterUser.count') do
      post newsletter_users_url, params: { newsletter_user: { email: @newsletter_user.email } }
    end

    assert_redirected_to newsletter_user_url(NewsletterUser.last)
  end

  test "should show newsletter_user" do
    get newsletter_user_url(@newsletter_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_newsletter_user_url(@newsletter_user)
    assert_response :success
  end

  test "should update newsletter_user" do
    patch newsletter_user_url(@newsletter_user), params: { newsletter_user: { email: @newsletter_user.email } }
    assert_redirected_to newsletter_user_url(@newsletter_user)
  end

  test "should destroy newsletter_user" do
    assert_difference('NewsletterUser.count', -1) do
      delete newsletter_user_url(@newsletter_user)
    end

    assert_redirected_to newsletter_users_url
  end
end
