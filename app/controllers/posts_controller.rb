class PostsController < ApplicationController

    def new #new just displays thef form; create actually performs the logic
        @post = Post.new
        @post["place_id"] = params["place_id"] #params place_id comes from query params in place show page ?place_id=
        @place = Place.find_by({ "id" => params["place_id"]}) #place_id is the value you're providing to look up in Places table (for new post page)
    end

    def create 
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}" #Redirects back the place that the post is for 
    end

end
