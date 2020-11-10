class StocksController < ApplicationController
    def index
        stocks = Stock.all 
        render json: StockSerializer.new(stocks)
    end

    def show
        stock = Stock.find(params[:id])
        render json: StockSerializer.new(stock)
    end
end
