class StoriesController < ApplicationController
    
  def index
      @stories = Story.all
       @stories = @stories.where(category: params[:category])
      
  end  
    
  def show
    
  end
    
end
