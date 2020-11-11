class Stock < ApplicationRecord
    has_many :watch_list_stocks
    has_many :watch_list, through: :watch_list_stocks 
end
