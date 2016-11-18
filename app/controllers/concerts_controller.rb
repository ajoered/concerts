class ConcertsController < ApplicationController
	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(venue: params[:concert][:venue], 
					artist: params[:concert][:artist], 
					city: params[:concert][:city], 
					date: params[:concert][:date], 
					price: params[:concert][:price], 
					description: params[:concert][:description])

		if @concert.save
			redirect_to concerts_path
		else
			render "new"
		end
	end

	def index
		@header = "ALL CONCERTS"
		@concerts = Concert.all
	end

	def show
		@header = Concert.find_by(id: params[:id]).artist
		@concert = Concert.find_by(id: params[:id])
	end
end
