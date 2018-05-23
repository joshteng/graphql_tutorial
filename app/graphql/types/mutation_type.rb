# frozen_string_literal: true

# Types::MutationType = GraphQL::ObjectType.define do
#   name 'Mutation'

#   field :createLink, function: Resolvers::CreateLink.new
#   field :createUser, function: Resolvers::CreateUser.new
# end

class Types::MutationType < GraphQL::Schema::Object
  field :createLink, function: Resolvers::CreateLink.new
  field :createUser, function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SignInUser.new
end
