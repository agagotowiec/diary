require 'todolist'
require 'todo'

RSpec.describe 'integration' do
  it "adds new todos to the todo-list" do
    todo_list = TodoList.new
    todo1 = Todo.new("wash your socks")
   expect( todo_list.add(todo1)).to eq [todo1]
  end
  end
  context "when we mark task as a complete" do
  it "doesn't show up in the incomplete task list" do
    todo_list = TodoList.new
    todo1 = Todo.new("wash your socks")
    todo2 = Todo.new("wash your car")
    todo_list.add(todo1)
    todo_list.add(todo2)
    todo2.mark_done!
   expect(todo_list.incomplete).to eq [todo1]
  end
  end
  context "when task has been done" do
    it "appears in complete tasks list" do
      todo_list = TodoList.new
      todo1 = Todo.new("wash your socks")
      todo2 = Todo.new("wash your car")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo2.mark_done!
     expect(todo_list.complete).to eq [todo2]
    end
    end
    context "if all todos are completed" do
      it "marks them as done and moves to the complete list" do
        new_todolist = TodoList.new
     todo1 = Todo.new("wash your socks")
     todo2 = Todo.new("wash your car")
     new_todolist.add(todo1)
     new_todolist.add(todo2)
     new_todolist.give_up!
     expect(new_todolist.complete).to eq [todo1, todo2]
      end
      end
 