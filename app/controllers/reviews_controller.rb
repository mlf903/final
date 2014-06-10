class ReviewsController < ApplicationController

  def create
  user = User.find_by("id" => cookies["user_id"])
  if user.present?
    Review.create("place_id" => params["place_id"],
                  "rating" => params["rating"],
                  "comments" => params["content"], "user_id" => cookies["user_id"])
    redirect_to "/places/#{params["place_id"]}", :notice => "Thanks for your review!"
  else
  	redirect_to "/places/#{params["place_id"]}", :notice => "Please sign in to write a review"
  end

  end


end