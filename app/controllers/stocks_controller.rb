class StocksController < ApplicationController
  def search
  	if params[:stock].blank?
  		flash.now[:danger] = "You've entered an empty search"
  	else
		@stock = Stock.new_from_lookup(params[:stock])
		flash.now[:danger] = "Please enter proper ticker symbol" unless @stock 
	end
	respond_to do |format|
		 format.js { render partial: "users/result" }
	end
  end
end
