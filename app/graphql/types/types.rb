 require "graphql"


# app/graphql/types/comment_type.rb
module Types
  class PostType < GraphQL::Schema::Object
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
    # Fields can return lists of other objects:
    field :comments, "[Types::CommentType]",
      # And fields can have their own descriptions:
      description: "This post's comments, or null if this post has comments disabled."
  end

  class CommentType < GraphQL::Schema::Object
    field :id, ID, null: false

    field :content, String, null: false
    field :post, PostType, null: false
  end
end
