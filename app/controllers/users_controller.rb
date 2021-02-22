class UsersController < ApplicationController
    def by_name
        @user = User.find_by(username: params[:username])
        render json: @user
    end

end
