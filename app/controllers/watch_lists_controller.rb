class WatchListsController < ApplicationController
    def show
        watch_list = WatchList.find(params[:id])
        render json: WatchListSerializer.new(watch_list)
    end

    def create
        # watchlist = WatchList.create(watchlist_params)
        # render json: WatchListSerializer.new(watchlist)
    end

end
