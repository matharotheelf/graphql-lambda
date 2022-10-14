
# frozen_string_literal: true

class Comment
  attr_reader :id, :content

  def initialize(id, content:)
    @id = id
    @content = content
  end

  def to_hash
    {
      id: id,
      content: content
    }
  end

  def self.find(id)
    all.find do |comment|
      comment.id == id.to_i
    end
  end

  def self.all
    @all ||= [
      Comment.new(1, content: 'First comment'),
      Comment.new(2, content: 'Second comment'),
      Comment.new(3, content: 'Third comment'),
      Comment.new(4, content: 'Fourth comment')
    ]
  end
end
