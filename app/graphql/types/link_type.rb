# frozen_string_literal: true

class Types::LinkType < Types::BaseType
  field :id, ID, null: true
  field :url, String, null: true
  field :description, String, null: true
  field :postedBy, Types::UserType, method: :user, null: true
  field :votes, [Types::VoteType], null: true
end

# Types::LinkType = GraphQL::ObjectType.define do
#   name 'Link'

#   field :id, !types.ID
#   field :url, !types.String
#   field :description, !types.String
#   # add postedBy field to Link type
#   # - "-> { }": helps against loading issues between types
#   # - "property": remaps field to an attribute of Link model
#   field :postedBy, -> { Types::UserType }, property: :user
# end
