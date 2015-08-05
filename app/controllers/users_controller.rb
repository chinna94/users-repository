class UsersController < ApplicationController
  # include MyTwitterModule
  #
   # before_filter :authenticate1, :only => [:index]
  # before_filter :User.authenticate, :only => [:index]
  # def authenticate1
  #   @user =  User.authenticate(params[:email], params[:password])
  #   deny_access unless @user
  # end
  #
  # def deny_access
  #   store_location
  #   redirect_to log_in_path, :notice => "Please log in to access this page."
  # end
  #
  # def store_location
  #   session[:return_to] = request.fullpath
  # end




  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!"
      render "users/index"
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

   def index
     @user =  User.authenticate(params[:email], params[:password])
     if @user
       puts "welcome"
       redirect_to welcome_path
     else
       redirect_to log_in_path
     end
   end

    def show
         @user= User.find(params[:id])
     end

    # before_filter :load_tweets
    #
    # UsersController.new.send :load_tweets
    # @tweets = user_timeline(20)
    #   render :template => 'users/tweets'
    # end


    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end


