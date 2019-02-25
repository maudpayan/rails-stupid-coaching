class QuestionsController < ApplicationController
  ANSWER = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

  def ask
  end

  def answer
    @answer = ANSWER
    if params[:question] == 'I am going to work'
      @final_answer = @answer[0]
    elsif params[:question].include?('?')
      @final_answer = @answer[1]
    else
      @final_answer = @answer[2]
    end
  end
end
