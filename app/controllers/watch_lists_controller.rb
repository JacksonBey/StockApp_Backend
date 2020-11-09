class WatchListsController < ApplicationController
    def show
        watch_list = WatchList.find(params[:id])
        render json: WatchListSerializer.new(watch_list)
    end

    def create
    end

end
