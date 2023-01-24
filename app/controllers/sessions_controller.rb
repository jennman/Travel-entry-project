class SessionsController < ApplicationController
    skip_before_action :authorized_user, only: [:create]

    def create 
        # byebug
        user = User.find_by(username:params[:username])
            
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            
            render json: user, status: :ok
        else
        render json: {errors: 'Invalid Password or Username'}, status: :unauthorized 
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

    def get_logged_in_user
        user_already_logged_in = User.find_by(id: session[:user_id])
        render json: user_already_logged_in
    end
end
