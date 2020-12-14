class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
        render :json => @blogs
    end

    def show
        @blog = Blog.find(params[:id])
        if @blog
            render :json => @blogs
        end
    end

    def create
        @blog = Blog.new(text: params[:post], user_id: params[:user_id])
        if @blog.save
            render :json => @user.to_json(include: [:skills, :projects, :followers, :followeds, :blogs])
        end
    end


end
