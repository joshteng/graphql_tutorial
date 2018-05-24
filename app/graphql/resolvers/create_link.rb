# frozen_string_literal: true

class Resolvers::CreateLink < GraphQL::Function
  # arguments passed as "args"
  argument :description, !types.String
  argument :url, !types.String

  # return type from the mutation
  type Types::LinkType

  def call(_obj, args, ctx)
    link = Link.new(
      description: args[:description],
      url: args[:url],
      user: ctx[:current_user]
    )
    link.save!
    link
  rescue ActiveRecord::RecordInvalid => err
    # on error, return an error:
    ctx.add_error(GraphQL::ExecutionError.new(link.errors.full_messages))
    # https://github.com/exAspArk/graphql-errors/issues/9
  end
end
