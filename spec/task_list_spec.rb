require "../lib/task_list.rb"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns true when all tasks are complete" do
    task_list = TaskList.new
    task_1 = double(:task, complete?: true)
    task_2 = double(:task, complete?: true)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq true
  end

  it "returns false when only some tasks are complete" do
    task_list = TaskList.new
    task_1 = double(:task, complete?: true)
    task_2 = double(:task, complete?: false)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all_complete?).to eq false
  end

  it "returns a list of all tasks" do
    task_list = TaskList.new
    task_1 = double(:task)
    task_2 = double(:task)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  # Unit test `#all` and `#all_complete?` behaviour
end
