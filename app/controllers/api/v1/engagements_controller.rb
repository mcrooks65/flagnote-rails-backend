class Api::V1::EngagementsController < ApplicationController
    def index
        @engagements = Engagement.all
        render json: @engagements
    end

    def create
        @engagement = Engagement.new(engagement_params)
        if @engagement.save
            render json: @engagement
        else
            render json: {error: 'Error creating engagement!!11one'}
        end
    end

    def show
        @engagement = Engagement.find(params[:id])
        render json: @engagement
    end

    def destroy
        @engagement = Engagement.find(params[:id])
        @engagement.destroy
    end

    private

    def engagement_params
        params.require(:engagement).permit(:name, :status)
    end
end
