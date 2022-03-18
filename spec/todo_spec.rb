require 'todo'

RSpec.describe Todo do
  it "returns task that has been added to the list" do
    todo = Todo.new("wash your socks")
    expect(todo.task).to eq "wash your socks"
end
context "if no task added to the list" do
it "returns message asking user to add the task" do
  todo = Todo.new("")
  expect(todo.task).to eq "Please add your task."
end
end
context "if the task has not been done yet" do
  it "returns false" do
    todo = Todo.new("wash your car")
    expect(todo.done?).to eq false
  end
  end
  context "when the task can be marked as done" do
    it "returns true" do
      todo = Todo.new("wash your car")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
    end
end