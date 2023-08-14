class QuestionsController < ApplicationController
  def ask
  end

  STOP_MESSAGE = "I am going to work"

  def answer
    @question = params[:question]
    # le params[:question] renvoi le résultat du formulaire
      if @question == STOP_MESSAGE || @question == STOP_MESSAGE.upcase
        @response = "Great!"
        # par la suite on affecte la réponse à une instance qu'on va afficher dans la vue
      elsif @question.end_with?("?")
        @response = "Silly question, get dressed and go to work!"
      else
        @response = "I don't care, get dressed and go to work!"
      end
  end
end
