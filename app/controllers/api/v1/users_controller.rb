module Api::V1
  class UsersController < ApplicationController
    has_secure_password
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /users
    def index
      @users = User.all

      render json: @users
    end



    # # POST /users
    # def create
    #   user = User.create(user_params)

    #   if user.valid?
    #     payload = {user_id: user.id}
    #     token = encode_token(payload)
    #     render json: {user: user, jwt: token}
    #   else
    #     render json: {errors: user.errors.full_messages}, status: :not_acceptable
    #   end
    # end



    private


      # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
      end
  end
end