class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end
end

  def create
    @portfolio_item = Portfolio.new(params)

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolio_url(@portfolios), notice: "Portfolio Item was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end