class PostsController < ApplicationController
        def index
        @posts = Post.all
        if @posts
            render json: @posts
        else
            render json: {
            status: 500,
            errors: ['no posts found']
            }
        end
    end

    def show
        @post = Post.find(params[:id])
        if @post
            
            render json: @post
        else
            render json: {
            status: 500,
            errors: ['post not found']
            }
        
        end
    end

    def create
        @post = Post.new(name: params[:name], user_id: params[:user_id], project_id: params[:project_id], message: params[:message])
        
        if @post.save
            @user = User.find(params[:user_id])
            @user.add_karma
            @user.save
            @project = Project.find(params[:project_id])
            render :json => @project.to_json(:include => [:skills, :users, :required_skills, :posts])
            
        else 
            render json: {
                working: false,
                errors: ["unsuccessful post creation"]
            }
        end
    end

end
