class Api::V1::TargetsController < ApplicationController

    before_action :set_engagement, :set_targets

    def index
        @targets = Target.all
        render json: @targets
    end

    def create
        @target = @engagement.targets.new(target_params)
        if @target.save
            render json:EngagementSerializer.new(@engagement).serializable_hash[:data][:attributes] 
        else
            render json: {error: 'Error creating target!!11one'}
        end
    end

    def show
        @target = Target.find(params[:id])
        render json: @target
    end

    def destroy
        @target = Target.find(params[:id])
        @target.destroy
    end

    private

    def set_engagement
        @engagement = Engagement.find(params[:engagement_id])
    end

    def set_targets
        @targets = @engagement.targets
    end

    def target_params
        params.require(:target).permit(:engagement_id, :ipaddress, :hostname, :sysinfo, :vulns, :log, :loot, :status)
    end
end
