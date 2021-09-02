require "test_helper"

class TaskTest < ActiveSupport::TestCase
  test "Should not save Task without task name" do 
    task = Task.new
    task.task_description = 'Testing test'
    task.deadline = 2021-02-01
    task.iscompleted = true
    assert_not task.save, "Saved the Task without a task name"
   end
   test "Should not save Task without task description" do 
    task = Task.new
    task.task_name = 'Testing description'
    task.deadline = 2021-02-01
    task.iscompleted = true
    assert_not task.save, "Saved the Task without a description"
   end
   test "Should not save Task without task deadline" do 
    task = Task.new
    task.task_name = 'Testing deadline naman'
    task.task_description = 'Testing deadline'
    task.iscompleted = true
    assert_not task.save, "Saved the Task without a deadline"
   end
   test "Should not save Task without task is completed" do 
    task = Task.new
    task.task_name = 'Testing deadline naman'
    task.task_description = 'Testing deadline'
    task.deadline = 2021-02-01
    assert_not task.save, "Saved the Task without a task is completed"
   end
end
