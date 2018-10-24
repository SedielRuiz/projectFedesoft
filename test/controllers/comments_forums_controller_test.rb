require 'test_helper'

class CommentsForumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comments_forum = comments_forums(:one)
  end

  test "should get index" do
    get comments_forums_url, as: :json
    assert_response :success
  end

  test "should create comments_forum" do
    assert_difference('CommentsForum.count') do
      post comments_forums_url, params: { comments_forum: { comment_forum: @comments_forum.comment_forum, forum_id: @comments_forum.forum_id, user_id: @comments_forum.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show comments_forum" do
    get comments_forum_url(@comments_forum), as: :json
    assert_response :success
  end

  test "should update comments_forum" do
    patch comments_forum_url(@comments_forum), params: { comments_forum: { comment_forum: @comments_forum.comment_forum, forum_id: @comments_forum.forum_id, user_id: @comments_forum.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy comments_forum" do
    assert_difference('CommentsForum.count', -1) do
      delete comments_forum_url(@comments_forum), as: :json
    end

    assert_response 204
  end
end
