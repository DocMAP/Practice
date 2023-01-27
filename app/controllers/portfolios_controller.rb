class PortfoliosController < ApplicationController
  before_action :set_portfolio_items, only: %i[ show edit update destroy]

	def index
		@portfolio_item = Portfolio.all #change to 'react' or 'ruby_on_rails' to filter the DB
	end

  def show
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
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolio_item_url(@portfolio_item), notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was successfully deleted." }
    end
  end

  def portfolio_params
    params.require(:portfolio). permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
  end
end
