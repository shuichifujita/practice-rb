# Todo and Memo

## tutorial 8 (login/logout)

### todo

1. ブラウザを閉じるとログインを破棄する
1. ユーザーのログインを自動で保存する
1. ユーザーが「パスワードを保存する (remember me)」チェックボックスをオンにした場合のみログインを保存する

難しいって。

2回やりな。

### memo

1. Sessionsコントローラーの作成
1. viewの作成 => signupとだいたい同じ
1. ユーザーの検証と認証
  - ログインが失敗した場合に表示されるエラーメッセージの配置
  - ログインに成功した場合に使用する土台部分の作成

```ruby
<%= current_user %> #これ書きたい

# これらも
<%= link_to "Users",    '#' %>
<%= link_to "Settings", '#' %>
<%= link_to "Log out", logout_path, method: :delete %>
<%= link_to "Profile", current_user %>
<%= link_to "Log in", login_path %>
# helperでユーザーのログイン状況を監視するメソッドを作成
# ifでnilでなければアカウント情報、nilならログインを表示
<% if logged_in? %>
<% else %>
<% end %>
```