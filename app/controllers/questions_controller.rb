class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end

  def show
    p "================================"
    p Question.find_by(id: params[:id])
    p "================================"
     @question = Question.find_by(id: params[:id])
     @answer = Answer.new
  end


  def new
    @question = Question.new
  end


  def create
    user = User.find(session[:user_id])
    question = user.questions.build(question_params)
    if question.save
      redirect_to questions_path
    else
      render :new
    end
  end 


 private
    def question_params
      params.require(:question).permit(:title, :content)
    end

end
