class CategoriesController < UserController
    
    
  
    
    def index
        @categories = Story::CATEGORIES 
      
    end
    
    
    

    
    
end