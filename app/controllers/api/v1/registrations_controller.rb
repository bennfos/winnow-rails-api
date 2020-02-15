module Api::V1
  class RegistrationsController < ApplicationController
    def create
      user = User.create!(
        first_name: params['first_name'],
        last_name: params['last_name'],
        email: params['email'],
        username: params['username'],
        password: params['password'],
        password_confirmation: params['password_confirmation']
      )

      if user
        session[:user_id] = user.id
        render json: {
          status: :created,
          user: user
        }
      else
        render json: {
          status: 500
        }
      end

    end
  end
end