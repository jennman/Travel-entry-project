class SignupController < ApplicationController
    # skip_before_action :authorized_user, only: [:create]

    def new 
        @user = User.new
        render json: @user
    end

    def create
        new_signup = User.new(signup_create_params)
        
        if new_signup.valid?
            new_signup.save
            render json: new_signup, status: :ok
        else
            render json: { error: new_signup.errors.full_messages}
        end
    end

    private 

    def signup_create_params
        params.permit(:name, :username, :password, :email)
# if dont have wrap params
        # params.require(:user).permit(:username, :password, :email)
    end

end
