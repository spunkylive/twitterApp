class PostsController < ApplicationController

  before_filter :login_required, :only => [:index]

  def index
    @posts = Post.all(:order => "created_at DESC")
  end

  def create
    @post = current_user.posts.create(
        :message => params[:message],
        :is_visible => params[:is_visible]
    )
    if @post
      redirect_to root_path
    else
      flash[:notice] = "Message failed to save."
      redirect_to posts_path
    end
  end
end
