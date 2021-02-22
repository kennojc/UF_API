class ValuesController < ApplicationController
    def by_date
        @user = User.find_by(username: request.headers["X-CLIENT"])
        @user.consults += 1
        @user.save
        @value = Value.find_by(date: params:date])
        render json: @value
    end
end
