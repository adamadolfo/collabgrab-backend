class UserSkillsController < ApplicationController
    def index
        @user_skills = UserSkill.all
        if @user_skills
            render :json => @user_skills
        else
            render json: {
            status: 500,
            errors: ['no user_skills found']
            }
        end
    end

    def show
        @user_skill = UserSkill.find(params[:id])
        if @user
            render :json => @user_skill
        else
            render json: {
            status: 500,
            errors: ['user_skill not found']
            }
        
        end
    end

    def create
        @user_skill = UserSkill.new(user_id: params[:user_id], skill_id: params[:skill_id])
        if @user_skill.save
            user = User.find(@user_skill.user_id)
            render json: user.to_json(include: [:skills, :projects])
        else 
            render json: {
                working: false,
                errors: ["unsuccessful skill creation"]
            }
        end
    end
end
