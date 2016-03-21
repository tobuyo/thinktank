module SessionsHelper

  def current_user###ログインしているユーザーを返すメソッド
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # 渡されたユーザーでログインする
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !!current_user
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end