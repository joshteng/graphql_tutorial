# frozen_string_literal: true

# Types::LinkType = GraphQL::ObjectType.define do
#   name 'Link'

#   field :id, !types.ID
#   field :url, !types.String
#   field :description, !types.String
# end

class Types::LinkType < GraphQL::Schema::Object
  field :id, ID, null: false
  field :url, String, null: false
  field :description, String, null: false
end
