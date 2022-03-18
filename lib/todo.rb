class Todo
  def initialize(task) 
    @task = task
    @complete = false
  end

  def task
    if @task.empty? 
      return "Please add your task."
    else
      return @task  
     end
   end

  def mark_done!
    @complete = true
  end

  def done?
    return @complete
  end

end