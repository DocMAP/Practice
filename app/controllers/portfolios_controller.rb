class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[ show edit update destroy]
  layout 'portfolios'

	def index
		@portfolio_items = Portfolio.all #change to 'react' or 'ruby_on_rails' to filter the DB
	  @browser_title = "My Portfolio"
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
    @browser_title = "Portfolio Item"
  end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
	end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_url(@portfolios), notice: "Portfolio Item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])

    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was successfully deleted." }
    end
  end

private

  def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio). permit(:title, 
                                       :subtitle, 
                                       :body, 
                                       :main_image, 
                                       :thumb_image, 
                                       technologies_attributes: [:name]
                                       )
  end
end
