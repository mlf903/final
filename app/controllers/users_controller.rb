class UsersController < ApplicationController

  def show
    @user = User.find_by("id" => params["id"])

    logger.debug @user["id"].inspect
    logger.debug cookies["user_id"].inspect

    if (@user["id"] != cookies["user_id"].to_i)
      redirect_to "/", :notice => "Sorry that is not your profile"
    end

  end

  def create
    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil
      User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"])

      redirect_to "/events"
    else
      redirect_to "/users/new" , :notice => "That username is taken.  Try again."
    end

  end

   def update
    the_user = User.find_by(params["id"])
    the_user.update("username" => params["username"],
                "password" => params["password"],
                "name" => params["name"])
    redirect_to '/users/#{the_user["id"]}'
  end
  
end

