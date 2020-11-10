class WatchListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :stock_id, :user_id
end
