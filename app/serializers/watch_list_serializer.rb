class WatchListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :stocks, :user_id, :watch_list_stocks
end
