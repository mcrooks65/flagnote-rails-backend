class Api::V1::TargetsController < ApplicationController
    def index
        @targets = Target.all
        render json: @targets
    end

    def create
        @target = Target.new(target_params)
        if @target.save
            render json: @target
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

    def target_params
        params.require(:target).permit(:engagement_id, :ipaddress, :hostname, :sysinfo, :vulns, :log, :loot, :status)
    end
end
