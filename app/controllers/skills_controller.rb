class SkillsController < ApplicationController
    def index
        @skills = Skill.all
        if @skills
            render :json => @skills.to_json(:include => {:users => {:include => :skills}})
        else
            render json: {
            status: 500,
            errors: ['no skills found']
            }
        end
    end

    def show
        @skill = Skill.find(params[:id])
        if @skill
            
            render :json => @skill.to_json(:include => [:projects, :users])
        else
            render json: {
            status: 500,
            errors: ['skill not found']
            }
        
        end
    end

    def create
        @skill = Skill.new(name: params[:name])
        if @skill.save
            render json: {
                skill: @skill,
                working: true
            }
        else 
            render json: {
                working: false,
                errors: ["unsuccessful skill creation"]
            }
        end
    end

end
