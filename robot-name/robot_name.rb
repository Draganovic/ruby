class Robot

  attr_reader :name

  def initialize
    @name = ('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample + (rand 999).to_s
  end

  def reset
    @name = ('A'..'Z').to_a.sample + ('A'..'Z').to_a.sample + (rand 999).to_s
  end

end