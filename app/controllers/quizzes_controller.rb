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
    
    def edit
        @quiz = Quiz.find(params[:id])
    end
    
    def update
        @quiz = Quiz.find(params[:id])
        quiz_params = params.require(:quiz).permit(:question, :answer1, :answer2, :answer3, :answer, :description)
        if @quiz.update(quiz_params)
            redirect_to quiz_path(@quiz)
        else
            render :edit
        end
    end
end