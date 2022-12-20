class VotesController < ApplicationController
  def index
    render json: count_votes
  end

  def create
    if params[:language_id]
      Vote.create(language_id: params[:language_id])
    else
      render json: {error: 'language_id must be provided'}, status: 400
    end
  end

  def count_votes
    Vote.group(:language_id).count
  end
end
