module Api::V1
  class AuthController < ApplicationController

    # def login
    #   user = User.find_by(username: params[:username])
    #   if (user && user.authenticate(params[:password]))
    #     payload = {user_id: user.id}
    #     token = encode_token(payload)
    #     render json: {user: user, jwt: token}
    #   else
    #     render json: {failure: "invalid username or password"}
    #   end
    # end

    # def auto_login
    #   if session_user
    #     render json: session_user
    #   else
    #     render json: {errors: "no user logged in"}
    #   end
    # end



  end
end