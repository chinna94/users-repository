class SessionsController < ApplicationController
  # include MyTwitterModule





  def new

  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      logger.info "user exists #{@user.id}"
      flash[:notice] = "You've been logged in."
      session[:user_id] = @user.id
      render "users/index"
    else
      flash[:notice] = "there has been a problem for u loggin in"
      redirect_to log_in_path
    end
  end

  def destroy
    session[:user_id]=nil
    flash[:notice]="You have been logged out successfully"
    redirect_to '/'
  end
  helper_method :destroy
end
