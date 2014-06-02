class EventsController < ApplicationController

	def create
		Event.create("place_id" => params["chosen_place_id"], "title" => params["title"], "details" => params["details"], "date" => params["chosen_date"], "time" => params["time"])
		redirect_to "/", :notice => "Your event has been added"

	end

	def update
		event = Event.find_by("id" => params["id"])
		event.update("place_id" => params["chosen_place_id"], "title" => params["title"], "details" => params["details"], "date" => params["chosen_date"], "time" => params["time"])
		redirect_to "/events/:id"

	end

	def destroy
		event = Event.find_by("id" => params["id"])
		event.delete
		redirect_to "/events"

	end

end 