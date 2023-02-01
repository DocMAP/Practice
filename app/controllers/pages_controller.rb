class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @browser_title = "Biography"
  end

  def contact
  end

#part of dynamic query route
  def something
    @random = params[:random]
    @another_one = params[:another_one]
    @and_another = params[:and_another]
  end
end
