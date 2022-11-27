class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(params[:user])
        flash[:notice] = "User #{@user.name} was successfully created."
        #redirect_to projects_path
    end

    def edit
        @user = User.find params[:id]
    end

    def update
        @user = User.find params[:id]
        flash[:notice] = "User #{@user.name} was successfully updated."
        #redirect_to projects_path
    end

end
