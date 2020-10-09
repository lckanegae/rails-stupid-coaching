class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answer]
      your_message = params[:answer]
      @answer =
      if your_message.end_with? "?"
        "Silly question, get dressed and go to work!"
      elsif your_message.downcase == "I am going to work!"
        "Great!"
      else
        "I don't care, get dressed and go to work!"
      end
    else
      @answer = "Say something!"
    end
  end
end
