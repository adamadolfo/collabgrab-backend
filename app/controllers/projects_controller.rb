class ProjectsController < ApplicationController
    def index
        @projects = Project.all
        if @projects
            render :json => @projects.to_json(:include => [:skills, :users, :required_skills, :posts]) 
           
        else
            render json: {
            status: 500,
            errors: ['no projects found']
            }
        end
    end

    def show
        @project = Project.find(params[:id])
        if @project
            render :json => @project.to_json(:include => [:skills, :users, :required_skills, :posts])
        else
            render json: {
            status: 500,
            errors: ['project not found']
            }
        
        end
    end

    def create
        @project = Project.new(name: params[:name], details: params[:details], location: params[:location])
        if @project.save
            @required_skill = RequiredSkill.create(name: params[:required_skill], project_id: @project.id)
            @collaboration = Collaboration.new(user_id: params[:user_id], project_id: @project.id)
            if @collaboration.save
                @user = User.find(params[:user_id])
                if @user
                    render :json => @user.to_json(include: [:skills, :projects])
                end
            end
        else 
            render json: {
                working: false,
                errors: ["unsuccessful project creation"]
            }
        end
    end
end
