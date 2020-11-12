class Api::V1::UsersController < ApplicationController
 
    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end


    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(edit_params)
        if @user.valid?
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: @token}
        else
            render json: { error: 'failed to edit user' }, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password)
    end

    def edit_params
        params.require(:user).permit(:name, :bio, :image)
    end
end
