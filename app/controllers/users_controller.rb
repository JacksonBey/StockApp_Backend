class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def index
        users = User.all 
        render json: UserSerializer.new(users)
    end

    def create
        user = User.create(user_params)
        if user
            login!
            render json: UserSerializer.new(user)
        else
            render json: {
                status: 500,
                errors: user.errors.full_messages
            }
        end
    end
    
    def update
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :bio, :image)
    end
end
