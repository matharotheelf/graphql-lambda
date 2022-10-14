require_relative 'comment'

# frozen_string_literal: true

class Post
  attr_reader :id, :title, :comments

  def initialize(id, title:, comments:)
    @id = id
    @title = title
    @comments = comments
  end

  def to_hash
    {
      id: id,
      title: title,
      comments: comments.to_hash
    }
  end

  def self.find(id)
    all.find do |post|
      post.id == id.to_i
    end
  end

  def self.all
    @all ||= [
      Post.new(1, title: 'First post', comments: [Comment.find(1), Comment.find(2)]),
      Post.new(2, title: 'Second post', comments: [Comment.find(3), Comment.find(4)])
    ]
  end
end
