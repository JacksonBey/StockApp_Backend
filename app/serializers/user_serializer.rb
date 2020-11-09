class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :username, :bio, :image
end
