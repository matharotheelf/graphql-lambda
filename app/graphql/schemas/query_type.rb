require "graphql"
require_relative "../types/types.rb"
require_relative "../../models/post"

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  # First describe the field signature:
  field :post, Types::PostType, "Find a post by ID" do
    argument :id, ID
  end

  # Then provide an implementation:
  def post(id:)
    Post.find(id)
  end
end

