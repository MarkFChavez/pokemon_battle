class MatchupGenerator

  attr_reader :subject, :limit

  def initialize(subject = Pokemon, limit = 2)
    @subject = subject
    @limit = limit
  end

  def generate
    subject.order("RANDOM()").limit(limit)
  end
end
