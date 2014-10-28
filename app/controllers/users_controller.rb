class UsersController < ApplicationController
  before_action :unset_arel_table

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    if params[:room]
      @posts = @user.posts.where(parent_id: params[:room])
      @room = ChatRoom.find params[:room]
    end

    if params[:show] == "room"
      @rooms = ChatRoom.have_user_posts_comments params[:id]
    end
  end

  private
  def unset_arel_table
    ChatRoom.unset_arel_table_aliases ChatRoom, Post, Comment
  end
end