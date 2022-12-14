class LanguagesController < ApplicationController
  def index
    @languages = Language.all
    render json: @languages
  end
  
  def create
    if params[:name]
      Language.create(name: params[:name])
    else
      render status: 400, json: 'Please provide a name for coding language'
    end
  end

  def show
    render json: Language.find(params[:id])
  end
end
