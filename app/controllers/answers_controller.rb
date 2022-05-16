class AnswersController < ApplicationController
 
 
  def new
    @answer = Answer.new
  end


  def show
    
  end


  def create
    user = User.find(session[:user_id])
    answer = user.answers.build(answer_params)
    if answer.save
      redirect_to  questions_path
    else
      render :new
    end
  end


  private
  
    def answer_params
      params.require(:answer).permit(:content)
    end

end
