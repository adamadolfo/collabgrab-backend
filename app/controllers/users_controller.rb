class UsersController < ApplicationController
    def index 
        @users = User.all
        if @users
            render :json => @users.to_json(include: [:skills, :projects, :followers, :followeds])
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
            render :json => @user.to_json(include: [:skills, :projects, :followers, :followeds])
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
            render :json => @user.to_json(include: [:skills, :projects, :followers, :followeds])
            
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
            render :json => @user.to_json(include: [:skills, :projects, :followers, :followeds])
        end
    end

    def follow
        @user = User.find(params[:follower_id])
        @followed = User.find(params[:followed_id])
        if @user && @followed
            if @user.following?(@followed)
                @user.unfollow!(@followed)
            else
                @user.follow!(@followed)
            end
            render :json => @user.to_json(include: [:skills, :projects, :followers, :followeds])
        end

    end


    def feed
        @user = User.find(params[:follower_id])
        render :json => @user.feed.to_json
    end
end
