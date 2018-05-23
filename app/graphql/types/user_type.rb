# frozen_string_literal: true

# Types::UserType = GraphQL::ObjectType.define do
#   name 'User'

#   field :id, !types.ID
#   field :name, !types.String
#   field :email, !types.String
# end

class Types::UserType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :name, String, null: false
  field :email, String, null: false
end
