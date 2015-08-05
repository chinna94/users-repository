class ApplicationController < ActionController::Base
   # include MyTwitterModule

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   # before_filter :load_tweets
   #
   # def index
   #  @tweets = user_timeline(20)
   #   render :partial => 'users/tweets'
   # end
  def authenticate1
    if @current_user
      puts "welcome"
      redirect_to welcome_path
    else
      redirect_to log_in_path
    end
  end

  def current_user
    @current_user ||= User.find(session[user_id]) if session[user_id]
  end
  helper_method :current_user
end
