class PostsController < ApplicationController

    def new #'new' action just displays the form; whereas 'create' actually performs the logic of creating a record
        @post = Post.new
        @post["place_id"] = params["place_id"] #for a post, we define place_id, which comes from params["place_id"] comes from the query params (e.g., ?place_id=) at the end of the Place 'show' page 
        @place = Place.find_by({ "id" => params["place_id"]}) #asking to look up place_id (from params above) in Places table a return in title of 'new' Post page)
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
