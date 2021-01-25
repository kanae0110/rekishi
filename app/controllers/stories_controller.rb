class StoriesController < UserController
    
  def index
      @stories = Story.all
      
      
  end  
    
  
end
