class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def create #actually need to check if this is the right approach. not sure if params has the last 4
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["place_id"] = params["post"]["place_id"]
        @post["created_at"] = params["post"]["created_at"]
        @post["updated_at"] = params["post"]["updated_at"]
        @post.save
        redirect_to "/posts"
      end

end
