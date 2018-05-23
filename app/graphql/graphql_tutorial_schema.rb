# frozen_string_literal: true

# GraphqlTutorialSchema = GraphQL::Schema.define do
#   query(Types::Query)
#   mutation(Types::Mutation)
# end

class GraphqlTutorialSchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)
end
