class UsersController < ApplicationController
    def index 
        @users = User.all
        if @users
            render :json => @users.to_json(include: [:skills, :projects])
        else
            render json: {
              status: 500,
              errors: ['no users found']
            }
        end
    end

    def show
        @user = User.find(params[:id])
        if @user
            render :json => @user.to_json(include: [:skills, :projects])
        else
            render json: {
            working: false,
            errors: ['user not found']
            }
        end
    end

    def create
        @user = User.new(name: params[:name], username: params[:username], password: params[:password], location: params[:location], karma: 0)
        if @user.save
            session[:user_id] = @user.id
            render :json => @user.to_json(include: [:skills, :projects])
            
        else 
            render json: {
                working: false,
                errors: ["unsuccessful signup"]
            }
        end
    end

    def update 

        @user = User.find(params[:user_id])
        if @user
            @user.update(name: params[:name], location: params[:location], img: params[:img], bio: params[:bio])
            render :json => @user.to_json(include: [:skills, :projects])
        end
    end

    def karma
        @user = User.find(params[:user_id])
        if @user
            @user.add_karma
        end
    end
end
