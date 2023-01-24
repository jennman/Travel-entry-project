class UsersController < ApplicationController
    
rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
rescue_from ActiveRecord::RecordInvalid, with: :user_unable_to_create

# before_action :user_find_method, except: [:index, :create] 
    
def index 
        users = User.all
        render json: users
    end

    def show 
        user_found = User.find_by(id: params[:id])
        render json: user_found, status: :ok
    end
    
    def create
        new_user = User.new(user_create_params)
        
        if new_user.valid?
            new_user.save
            session[:user_id] = new_user.id
            render json: new_user, status: :ok
        else
            render json: { error: new_user.errors.full_messages}
        end
    end

    def update
        user = User.find_by(id: params[:id])
        if user
            user.update(user_update_params)
            render json: user, status: :accepted
        else
            render json: { error: "user not found"}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    def my_locations
        current_user = User.find_by(id: session[:user_id])
        render json: current_user.locations
    end

    private 

    def user_create_params
        params.permit(:username, :password, :email)
# if dont have wrap params
        # params.require(:user).permit(:username, :password, :email)
    end

    def user_update_params
        params.permit(:username, :password, :email)

    end

    def user_not_found
        render json: {error: "User Not Found"}
    end

    def user_unable_to_create( the_invalid_user_exception)
        # render json: {errors: the_invalid_user_exception}
        render json: {errors: the_invalid_user_exception.record.errors.full_messages}
    end

end
