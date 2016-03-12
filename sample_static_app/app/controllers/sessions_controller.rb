class SessionsController < ApplicationController
  def new
  end

  def create
    # フォームから渡されたemail/passをdbから検索
    user = User.find_by(email: params[:session][:email].downcase)
    # userがあればログイン、なければエラーメッセージと共に'new'に遷移
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
