class SiteController < ApplicationController
	def home
		@header = "HOME"
		@concerts_today = Concert.where("date <= ?", Date.tomorrow)	
	end
end
