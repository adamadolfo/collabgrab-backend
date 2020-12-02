class ProjectSkillsController < ApplicationController
    def index
        @project_skills = ProjectSkill.all
        if @project_skills
            render :json => @project_skills
        else
            render json: {
            status: 500,
            errors: ['no project_skills found']
            }
        end
    end

    def show
        @project_skill = ProjectSkill.find(params[:id])
        if @user
            render :json => @project_skill
        else
            render json: {
            status: 500,
            errors: ['project_skill not found']
            }
        
        end
    end

    def create
        @project_skill = projectSkill.new(project_id: params[:project_id], skill_id: params[:skill_id])
        if @project_skill.save
            render json: {
                project_skill: @project_skill,
                working: true
            }
        else 
            render json: {
                working: false,
                errors: ["unsuccessful project skill creation"]
            }
        end
    end
end
