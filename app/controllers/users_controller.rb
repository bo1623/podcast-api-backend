class UsersController < ApplicationController

    def create
      User.find_or_create_by(username: params[:username])
    end

    def index
      render json: {message: "HI"}
    end


end
