class StoriesController < ApplicationController
    
    def index
        @stories = Story.all
    end
    
    def show
        @stories = Story.find(params[:id])    
    end   
    
    def new
        @story = Story.new
    end
    
    def create
        story_params = params.require(:story).permit(:category, :name)
        @story = Story.new(story_params)
        if @story.save
            redirect_to stories_path
        else
            render :new
        end
    end
    
    def edit
        @book = Book.find(params[:id])
    end
    
    def update  
        @story = Story.find(params[:id])
        story_params = params.require(:story).permit(:category, :name)
        if @story.update(story_params)
            redirect_to story_params
        else
            render :edit
        end
    end
    
    def destory
        @story = Story.find(params[:id])
        @story.destory
        redirect_to stories_path
    end
end