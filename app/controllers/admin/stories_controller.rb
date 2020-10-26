class Admin::StoriesController < ApplicationController
    before_action :set_story, only: [:show, :edit, :update, :destroy]
    
    def index
        @stories = Story.all
    end
    
    def show
        
    end   
    
    def new
        @story = Story.new
    end
    
    def create
        story_params = params.require(:story).permit(:category, :name)
        @story = Story.new(story_params)
        if @story.save
            flash[:notice] = "ストーリーに１件登録しました"
            redirect_to admin_stories_path
        else
            flash.now[:alert] = "登録に失敗しました"
            render :new
        end
    end
    
    def edit
       
    end
    
    def update  
        
        story_params = params.require(:story).permit(:category, :name)
        if @story.update(story_params)
            flash[:notice] = "ストーリーを更新しました"
            redirect_to admin_stories_path
        else
            flash.now[:alert] = "更新に失敗しました"
            render :edit
        end
    end
    
    def destroy
       
        @story.destroy
        flash[:notice] = "削除しました"
        redirect_to admin_stories_path
    end
    
    def set_story
        @story = Story.find(params[:id])
    end    
end