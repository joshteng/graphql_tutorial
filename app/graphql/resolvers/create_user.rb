# frozen_string_literal: true

class Resolvers::CreateUser < GraphQL::Function
  # AuthProviderInput = GraphQL::InputObjectType.define do
  #   name 'AuthProviderSignupData'
  # end

  class AuthProviderInput < GraphQL::Schema::InputObject
    argument :credentials, Types::AuthProviderEmailInputType, required: true
  end

  argument :name, !types.String
  argument :authProvider, AuthProviderInput

  type Types::UserType

  def call(_obj, args, _ctx)
    User.create!(
      name: args[:name],
      email: args[:authProvider][:credentials][:email],
      password: args[:authProvider][:credentials][:password]
    )
  end
end
