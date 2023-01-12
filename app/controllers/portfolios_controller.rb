class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end
end

  def create
    @portfolio_item = Portfolio.new

    respond_to do |format|
      if @portfolio_items.save
        format.html { redirect_to portfolio_url(@portfolios), notice: "Portfolio Item was successfully created." }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

end