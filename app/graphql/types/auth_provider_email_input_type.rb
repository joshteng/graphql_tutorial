# frozen_string_literal: true

# Types::AuthProviderEmailInput = GraphQL::InputObjectType.define do
#   name 'AUTH_PROVIDER_EMAIL'

#   argument :email, !types.String
#   argument :password, !types.String
# end

class Types::AuthProviderEmailInputType < GraphQL::Schema::InputObject
  argument :email, String, required: true
  argument :password, String, required: true
end
