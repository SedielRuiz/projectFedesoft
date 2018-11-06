class CommentsForumSerializer < ActiveModel::Serializer
  attributes :id, :comment_forum
  belongs_to :comments_forums
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name
  end
end
