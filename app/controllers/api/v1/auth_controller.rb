module Api::V1
  class AuthController < ApplicationController

    def login
      user = User.find_by(username: params[:username])
      if (user && user.authenticate(params[:password]))
        payload = {user_id: user.id}
        token = encode_token(payload)
        render json: {user: user, jwt: token}
      else
        render json: {failure: "Invalid username or password"}
      end
    end

  end
end