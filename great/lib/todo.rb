class Todo
  attr_reader :description, :completed

  def initialize(description)
    @description = description
    @completed = false
  end

  def set_complete
    @completed = true
  end

  def completed_as_string
    @completed == false ? "not complete" : "complete"
  end
end
