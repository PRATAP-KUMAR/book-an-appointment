class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :username, :role, :email, :created_at
end
