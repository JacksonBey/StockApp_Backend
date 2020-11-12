class WatchListStocksController < ApplicationController

    def create
        @watch_list_stock = WatchListStock.create(watch_list_stock_params)
        if @watch_list_stock.valid?
            render json: { message: 'created watch list stock' }, status: :created
        else
            render json: { error: 'failed to create watch list stock' }, status: :not_acceptable
        end
    end

    private

    def watch_list_stock_params
        params.require(:watch_list_stock).permit(:stock_id, :watch_list_id)
    end
end
