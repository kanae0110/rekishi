class CategoriesController < ApplicationController
    
   
    
    
  
    
    def index
        @stories = Story.all
    end
    
    def show
        @story = Story.find_by(category: params[:category]) 
    end
    
    private
    
    
    
   
end