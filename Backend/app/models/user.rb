class User < ApplicationRecord
    has_many :watch_lists
    has_many :stocks, through: :watch_lists 

    has_secure_password
end
