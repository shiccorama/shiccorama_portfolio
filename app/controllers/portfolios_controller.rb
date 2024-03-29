class PortfoliosController < ApplicationController

	def index
		@portfolios = Portfolio.all
	end


	def show
		@portfolios = Portfolio.find(params[:id])
	end


	def new
		@portfolios = Portfolio.new
	end


	def create
		@portfolios = Portfolio.new(portfolio_params)

		respond_to do |format|
			if @portfolios.save
				format.html { redirect_to portfolios_url, notice: "Portfolio created successfully."}
			else
				format.html {render :new, status: :unprocessable_entity}
			end
		end

	end



	def edit
		@portfolios = Portfolio.find(params[:id])
	end


	def update
		@portfolios = Portfolio.find(params[:id])

		respond_to do |format|
			if @portfolios.update(portfolio_params)
				format.html { redirect_to portfolios_path, notice: "Portfolio updated successfully."}
			else
				format.html {render :new, status: :unprocessable_entity}
			end
		end
	end

	def destroy
		@portfolios = Portfolio.find(params[:id])

		@portfolios.destroy

		respond_to do |format|
			format.html { redirect_to portfolios_path, notice: "Blog was successfully destroyed." }
		end
	end


	private

	def portfolio_params
		params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
	end



























end
