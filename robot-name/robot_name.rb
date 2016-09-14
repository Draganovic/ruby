class Robot

  attr_reader :name

  def initialize
    letters = ("A".."Z").to_a.sample(2).join
    numbers = ("100"..."999").to_a.sample(1).join
    @name = letters + numbers
  end

  def reset
    initialize
  end
end
