class EntriesController < ApplicationController
  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
  
    # Attach the uploaded file
    if params["uploaded_image"]
      @entry.uploaded_image.attach(params["uploaded_image"])
    end
  
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end
end
