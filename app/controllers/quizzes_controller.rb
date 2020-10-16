class QuizzesController < ApplicationController
    
    def index
        @quizzes = Quiz.all
    end
    
    def show
        @quiz = Quiz.find(params[:id])
    end
    
    def new
        @quiz = Quiz.new
    end
    
    def create
        quiz_params = params.require(:quiz).permit(:question, :answer1, :answer2, :answer3, :answer, :description)
        @quiz = Quiz.new(quiz_params)
        if @quiz.save
            redirect_to quizzes_path
        else
            render :new
        end
    end
end