class PortfoliosController < ApplicationController

	def index
		@portfolios = Portfolio.all
	end


	def show
	end


	def new
		@portfolios = Portfolio.new
	end

	def edit
	end

	def create
		@portfolios = Portfolio.new(portfolio_params)

		respond_to do |format|
			if @portfolios.save
				format.html { redirect_to portfolios_path, notice: "Portfolio created successfully."}
			else
				format.html {render :new, status: :unprocessable_entity}
			end
		end

	end


	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
	end



























end
