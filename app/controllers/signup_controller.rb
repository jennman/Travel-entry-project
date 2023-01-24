class SignupController < ApplicationController
    # skip_before_action :authorized_user, only: [:create]

    def new 
        @user = User.new
        render json: @user
    end

end
