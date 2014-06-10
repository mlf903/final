class ReviewsController < ApplicationController

  def create
    Review.create("place_id" => params["place_id"],
                  "rating" => params["rating"],
                  "comments" => params["content"])
    redirect_to "/places/#{params["places_id"]}", :notice => "Thanks for your review!"

  end


end