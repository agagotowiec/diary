class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
  if todo == ""
    return "Please enter your to-do task"
  else 
    @todo_list << todo
   end
  end

  def incomplete
    return @todo_list.reject do |task|
      task.done?
      #another way: return @todo_list.reject(:&done?) end
  end
end

  def complete
    #another way: return @todo_list.select(:&done?) end
    return @todo_list.select do |task|
      task.done?
   end
  end

  def give_up! #marks all todos as completed and moves them to complete list
    @todo_list.each do |todo|
      todo.mark_done!
  end
end
end