require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup infomation" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: {
        name: "",
        email: "user@invalid",
        password: "foo",
        password_confirmation: "bar"
      }
    end
    assert_template 'users/new' # users/newにいるか
    assert_select 'div#error_explanation' # エラーメッセージが表示されているか
    assert_select 'div.alert-danger'
  end

  test "valid signup infomation" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {
        name: "Example User",
        email: "user@example.com",
        password: "password",
        password_confirmation: "password"
      }
    end
    assert_template 'users/show' # users/showに遷移したか
    assert_not flash.empty? # flashが空でないか
    assert is_logged_in? # helperで定義してる
  end
end
