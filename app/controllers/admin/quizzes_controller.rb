class Admin::QuizzesController < ApplicationController
    
    def index
        @quizzes = Quiz.all
    end
    
    def show
        @quiz = Quiz.find(params[:id])
    end
    
    
    def new
        @quiz = Quiz.new
        
        @story = Story.find(params[:story_id])
    end
    
    def create
        quiz_params = params.require(:quiz).permit(:question, :answer1, :answer2, :answer3, :answer, :discription, :story_id)
        @quiz = Quiz.new(quiz_params)
        @story = Story.find(@quiz.story_id)
        if @quiz.save
            redirect_to admin_quizzes_path
        else
            render :new
        end
    end
    
   
        
    def edit
        @quiz = Quiz.find(params[:id])

    end
    
    def update
        @quiz = Quiz.find(params[:id])
        quiz_params = params.require(:quiz).permit(:question, :answer1, :answer2, :answer3, :answer, :discription)
        if @quiz.update(quiz_params)
            redirect_to admin_quizzes_path
        else
            render :edit
        end
    end
    
    def destroy
        @quiz = Quiz.find(params[:id])
        @quiz.destroy
        redirect_to admin_quizzes_path
    end
end