class CommentsForumSerializer < ActiveModel::Serializer
  attributes :id, :comment_forum
  
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name
  end
end
