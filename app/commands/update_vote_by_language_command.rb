class UpdateVoteByLanguageCommand
  
  def initialize(original_language_id, new_language_id)
    @votes = get_votes(original_language_id)
    @new_language_id = new_language_id
  end

  def call
    votes.each do |vote|
      vote.language_id = new_language_id
      vote.save
    end
  end

  private
  
  attr_reader :votes, :new_language_id

  def get_votes(original_language_id)
    Vote.where(language_id: original_language_id)
  end
end

UpdateVoteByLanguageCommand.new(2, 7).call