class SessionController < ApplicationController
    def create
        user = User.find_by(user_id: params[:user_id])
        if (user == nil)
          create_user = User.create(params)
          render json: create_user, status: :created
        else
          render json: user
        end
      end
end
