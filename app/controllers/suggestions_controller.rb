class SuggestionsController < ApplicationController

  before_action :set_suggestion, only: [:destroy]

  def index
    @suggestions = Suggestion.order(created_at: :desc)
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.save

    redirect_to root_url
  end

  def create
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.save

    redirect_to root_url
  end

  def destroy
    @suggestion.destroy
    redirect_to root_url
  end

  private

  def set_suggestion
    @suggestion = Suggestion.find(params[:id])
  end

  def suggestion_params
    params.require(:suggestion).permit(:text)
  end

end
