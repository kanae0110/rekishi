class QuizzesController < UserController
    
    def index
        @quizzes = Quiz.all
    end
    
    def show
        @quiz = Quiz.find(params[:id])
        story_user = StoryUser.where(user_id: session[:user_id]).where(story_id: @quiz.story_id).first
        if story_user.present?
            story_user.update(quiz_id: @quiz.id)
        else
            StoryUser.create(story_id: @quiz.story_id, user_id: session[:user_id], quiz_id: @quiz.id)
        end
    end
    
    def finish
    end
    
end
