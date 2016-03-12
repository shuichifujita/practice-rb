module SessionsHelper
  # 渡されたユーザーでログイン
  def log_in(user)
    session[:user_id] = user.id
  end

  # ログインしているユーザーを返す
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # current_userがnilでないか
  # つまりセッションにユーザーが存在するか
  def logged_in?
    !current_user.nil?
  end

   def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
