class MySuperClass
  def initialize(params)
    @params = params
  end

  def print_votes
    puts Vote.group(:language_id).count
  end
end