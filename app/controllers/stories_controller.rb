class StoriesController < ApplicationController
    
    def index
        @stories = Story.all
    end
    
    def show
        @stories = Story.find(params[:id])    
    end   
    
    
end