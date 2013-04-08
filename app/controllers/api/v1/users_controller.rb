module Api::V1
  class UsersController < ApiController
    def index
      users = User.all

      render json: users
    end

    def show
      user = User.find_by_uid(params[:id])

      render json: user
    end
  end
end
