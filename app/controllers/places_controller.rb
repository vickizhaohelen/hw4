class PlacesController < ApplicationController

  def index
    if session["user_id"]
      @places = Place.where({ "user_id" => session["user_id"] })
    else
      redirect_to "/login"
    end
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    # Find all entries where the place_id matches this place
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
  end

  def create
    if session["user_id"]
      @place = Place.new
      @place["name"] = params["name"]
      @place["user_id"] = session["user_id"]
      @place.save
      redirect_to "/places"
    else
      redirect_to "/login"
    end
  end

end