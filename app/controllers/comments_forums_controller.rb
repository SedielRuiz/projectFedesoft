class CommentsForumsController < ApplicationController
  before_action :set_comments_forum, only: [:show, :update, :destroy]

  # GET /comments_forums
  def index
    @comments_forums = CommentsForum.all

    render json: @comments_forums
  end

  # GET /comments_forums/1
  def show
    render json: @comments_forum
  end

  # POST /comments_forums
  def create
    @comments_forum = CommentsForum.new(comments_forum_params)

    if @comments_forum.save
      render json: @comments_forum, status: :created, location: @comments_forum
    else
      render json: @comments_forum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments_forums/1
  def update
    if @comments_forum.update(comments_forum_params)
      render json: @comments_forum
    else
      render json: @comments_forum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments_forums/1
  def destroy
    @comments_forum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comments_forum
      @comments_forum = CommentsForum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comments_forum_params
      params.require(:comments_forum).permit(:forum_id, :user_id, :comment_forum)
    end
end
