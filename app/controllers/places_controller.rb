class PlacesController < ApplicationController

	def create
		Place.create("name" => params["name"], "phone" => params["phone"], "address" => params["address"])
		redirect_to "/places", :notice => "Your place has been added"

	end

end 