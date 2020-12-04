require "todo"

class TodoList
  def initialize
    @todos = []
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
     all[index]
  end

  def to_string
    all.each_with_index.map do |todo, index|
      "#{index + 1}. #{todo.description} #{todo.completed_as_string}"
    end
    .join("\n")
  end

  def set_complete(index)
    all[index].set_complete
  end

  private

  def all
    @todos
  end
end
