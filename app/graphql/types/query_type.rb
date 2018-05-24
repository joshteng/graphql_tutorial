# frozen_string_literal: true

# Types::QueryType = GraphQL::ObjectType.define do
#   name 'Query'
#   field :allLinks, [Types::Link], null: false do
#     resolve lambda { |_obj, _args, _ctx|
#       Link.all
#     }
#   end
# end

class Types::QueryType < GraphQL::Schema::Object
  # field :allLinks, [Types::LinkType], null: false, method: :get_all_links
  field :allLinks, [Types::LinkType], null: false, function: Resolvers::LinksSearch

  # def get_all_links
  #   Link.includes(:user).all
  # end
end
