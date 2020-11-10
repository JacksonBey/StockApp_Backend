class WatchListsController < ApplicationController

    def index
        watch_lists = WatchList.all 
        render json: WatchListSerializer.new(watch_lists)
    end
    
    def show
        watch_list = WatchList.find(params[:id])
        render json: WatchListSerializer.new(watch_list)
    end

    def create
        @watch_list = WatchList.create(watch_list_params)
        if @watch_list.valid?
            render json: WatchListSerializer.new(@watch_list), status: :created
        else
            render json: { error: 'failed to create watch list' }, status: :not_acceptable
        end
    end

    private

    def watch_list_params
        params.require(:watch_list).permit(:title, :user_id => current_user.id)
    end
end
