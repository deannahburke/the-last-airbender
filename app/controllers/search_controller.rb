class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.get_details(params[:nation])
  end
end
