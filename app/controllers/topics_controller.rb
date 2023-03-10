class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout "blogs"
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:admin, :editor) || @blog.published?
      @blogs = @topic.blogs.recent.page(params[:page]).per 5
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per 5
    end
  end

  private

  def set_sidebar_topics
    @side_bar_topics = Topic.with_blogs
  end
end
