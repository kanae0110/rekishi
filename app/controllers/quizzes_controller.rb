class QuizzesController < ApplicationController
    
    def index
        @quizzes = Quiz.all
    end
    
    def show
        @quiz = Quiz.find(params[:id])
        @story = Story.find_by(params[:start_id])
    end
    
end
