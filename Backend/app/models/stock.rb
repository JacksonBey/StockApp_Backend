class Stock < ApplicationRecord
    has_many :watch_lists
    has_many :users, through: :watch_lists 
end
