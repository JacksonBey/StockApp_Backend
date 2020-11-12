class WatchListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :stocks, :user_id
end
