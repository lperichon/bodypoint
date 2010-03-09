class PostsController < SimpleBlog::PostsController
  before_filter :navigation
  before_filter :require_user, :except => [:show, :index]

  def navigation
    @posts ||= Post.all
    @post ||= params[:id] ? Post.find(params[:id]) : @posts.last
    unless @post.blank?
      @previous_post = Post.previous(@post).first
      @next_post = Post.next(@post).first
    end

    @post ||= Post.new
  end
end