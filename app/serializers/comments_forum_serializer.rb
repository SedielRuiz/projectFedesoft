class CommentsForumSerializer < ActiveModel::Serializer
  attributes :id, :comment_forum
  has_many :user
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name
    belongs_to :comments_forums
  end
end
