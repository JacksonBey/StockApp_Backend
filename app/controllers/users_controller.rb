class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        # @user = User.create(user_params)
    end
    
    def update
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password_digest, :bio, :image)
    end
end
