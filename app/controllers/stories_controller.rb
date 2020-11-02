class StoriesController < CategoriesController
    
  def index
      @stories = Story.where(category: "事件")
  end  
    
    
end
