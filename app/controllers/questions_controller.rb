class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @question = params[:question]
  stop_message = "I am going to work right now!"
 @coach_answer = if @question == stop_message || @question == stop_message.upcase
            ""
          elsif @question.end_with?("?")
            "Silly question, get dressed and go to work!"
          else
            "I don't care, get dressed and go to work!"
          end
  end
end
