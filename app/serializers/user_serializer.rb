class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :bio, :image, :watch_lists
end
