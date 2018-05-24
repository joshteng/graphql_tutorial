# frozen_string_literal: true

class Types::VoteType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :user, Types::UserType, null: true
  field :link, Types::LinkType, null: false
end
