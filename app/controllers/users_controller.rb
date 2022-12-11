class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
         @user = User.find(params[:id])
    end
    
      def new
        @user = User.new
      end

    
      def create
        @user = User.new(user_params)
        if @user.save
         flash[:success] = "Welcome to the world #{@user.username}"
         redirect_to posts_path
        else
         render 'new'
        end
       end
       def edit
        @user = User.find(params[:id])
       end

     private
     def user_params
       params.require(:user).permit(:username, :email, :password)
     end
     
end

