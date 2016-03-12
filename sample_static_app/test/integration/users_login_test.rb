require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  # **** Old login test ****
  # test "login with invalid infomation" do
  #   get login_path
  #   assert_template 'sessions/new'
  #   post login_path, session: {email: "", password: ""}
  #   assert_template 'sessions/new'
  #   assert_not flash.empty?
  #   get root_path # 新たにセッションが発生した場合、flashはemptyか
  #   assert flash.empty?
  # end

  test "login with valid infomation" do
    # このテスト走らせないで！
    get login_path
    # 情報をポストしてログイン
    # ActiveModel::SecurPasswordの定義がうまくいってない
    post login_path, session: {email: @user.email, password: 'password'}
    assert_redirected_to @user
    follow_redirect! # 実際にリダイレクト
    assert_template 'users/show'
    assert_select "a[href=?]", login_path, count: 0 # ログインボタンがないか
    assert_select "a[href=?]", logout_pass # ログアウトボタンがあるか
    assert_select "a[href=?]", user_path(@user) # プロフィール用のリンクがあるか
    delete logout_pass
    assert_not is_logged_in?
    assert_redirected_to root_path
    follow_redirect!
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end
end
