class StoriesController < ApplicationController
    
  def index
      @stories = Story.all
       @stories = @stories.where(category: "人物")
      
  end  
    
  def show
    
  end
    
end
