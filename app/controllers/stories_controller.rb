class StoriesController < ApplicationController
    
  def index
      @stories = Story.select("name")
  end  
    
    
end
