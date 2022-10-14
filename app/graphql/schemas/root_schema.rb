require "graphql"
require_relative "query_type.rb"

class RootSchema < GraphQL::Schema
  query QueryType
end
