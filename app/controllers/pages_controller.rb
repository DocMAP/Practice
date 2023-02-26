class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @portfolio_items = Portfolio.all
  end

  def about
    @browser_title = "Biography"
    @skills = Skill.all
  end

  def contact
    @browser_title = "Contact Me"
  end

#part of dynamic query route
  def something
    @random = params[:random]
    @another_one = params[:another_one]
    @and_another = params[:and_another]
  end
end
