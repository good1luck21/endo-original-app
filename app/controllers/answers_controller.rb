class AnswersController < ApplicationController
 
 
  def new
    @answer = Answer.new
  end


  def show
    
  end


  def create
    p "================================"
    p params
    p "================================"
    @question = Question.find_by(id: params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user_id = session[:user_id]
    if @answer.save
      redirect_to question_path(@question)
    end
  end


  private
  
    def answer_params
      params.require(:answer).permit(:content)
    end

end
