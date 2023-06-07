class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post and return
        end
        render :new, status: :unprocessable_entity
    end

    private
        def post_params

        end
    
end
