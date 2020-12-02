class CollaborationsController < ApplicationController
    def index
        @collaborations = Collaboration.all
        if @collaborations
            render :json => @collaborations
        else
            render json: {
            status: 500,
            errors: ['no collaborations found']
            }
        end
    end

    def show
        @collaboration = Collaboration.find(params[:id])
        if @user
            render :json => @collaboration
        else
            render json: {
            status: 500,
            errors: ['collaboration not found']
            }
        
        end
    end


    def create
        @collaboration = Collaboration.new(user_id: params[:user_id], project_id: params[:project_id])
        if @collaboration.save
            render json: {
                collaboration: @collaboration,
                working: true
            }
        else 
            render json: {
                working: false,
                errors: ["unsuccessful collab creation"]
            }
        end
    end
end
