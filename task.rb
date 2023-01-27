class Task
  attr_reader :name

  def initialize(name)
    @name = name
    @completed = false
  end

  def completed
    @completed = true
  end

  def completed?
    @completed
  end
end
