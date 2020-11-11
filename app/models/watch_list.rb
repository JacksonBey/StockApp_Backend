class WatchList < ApplicationRecord
  belongs_to :user
  
  has_many :watch_list_stocks
  has_many :stocks, through: :watch_list_stocks
end
