class VotesController < ApplicationController
  def index
    render json: count_votes
  end

  def show
    params[:language_id]

  end


  def count_votes
    Vote.group(:language_id).count
  end
end
