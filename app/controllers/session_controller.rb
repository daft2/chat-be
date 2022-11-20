class SessionController < ApplicationController
    def create
        user = User.find_by(user_id: params[:user_id])

        if (user == nil)
          create_user = User.create(user_id: params[:user_id])
          render json: create_user, status: :created
        else
          render json: user, status: :ok
        end
      end
end
