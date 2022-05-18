class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"] }) #params ID comes from URL, and find_by retrieves it from places table
        #findby is when there's only one result 
        #where is when you expect multiple; why variable name is plural
        @posts = Post.where({"place_id" => @place["id"]}) #for field place_id in posts table, return data where it's @place[id]
        #Post.destroy_all
    end

    def new
        @place = Place.new
    end

    def create 
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
      end

end
