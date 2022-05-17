class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create 
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["place_id"] = Place.find_by({ "id" => params["id"] })
        @post.save
        redirect_to "/places" #Need to figure out how to redirect this back to a specific place 
    end

end
