class UsersController < ApplicationController
    
    #/users/
    def index
        render json: User.all, status: :ok
    end

    #/users/id
    def show
        user = User.find(params[:id])
        render json: user, status: 200
    end

    #/users/
    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    #/users/id
    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json:user, status: 200
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {"message": "deleted"}, status: 200
    end

    private
    def user_params
        params.permit(:name)
    end
end