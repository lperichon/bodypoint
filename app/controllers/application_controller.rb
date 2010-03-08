# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :find_latest_posts

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  private

  def find_latest_posts
    @latest_posts = Post.find(:all, :limit => 10, :order => 'created_at DESC')
  end
end
