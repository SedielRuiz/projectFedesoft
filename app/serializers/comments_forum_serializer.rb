class CommentsForumSerializer < ActiveModel::Serializer
  attributes :id, :comment_forum
  has_many :users
  
  class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name
  end
end
