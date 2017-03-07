module Api::V1
  class UsersController < ApiController
    before_action :set_user, only: [:show]
    # GET /v1/users
    def index
      render json: User.all
    end

    def show
      render json: @user
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  end
end
