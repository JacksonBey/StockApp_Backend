class StocksController < ApplicationController
    def index
        stocks = Stock.all 
        render json: StockSerializer.new(stocks)
    end

    def show
        # stocks = Stock.all 
        # render json: StockSerializer.new(stocks)
    end

    def create
    end
end
