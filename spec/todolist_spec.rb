require 'todolist'

RSpec.describe TodoList do
  it "adds the todo to the list" do
    new_todolist = TodoList.new
    expect(new_todolist.add("wash your car")).to eq ["wash your car"]
  end
end
context "if todo is an empty string" do
it "asks user for a todo" do
  new_todolist = TodoList.new
  expect(new_todolist.add("")).to eq "Please enter your to-do task"
end
end
