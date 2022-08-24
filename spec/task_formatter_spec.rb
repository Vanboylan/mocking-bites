require "../lib/task_formatter.rb"

RSpec.describe TaskFormatter do
  it "constructs" do
    fake_task = double :fake_task
    task_string = TaskFormatter.new(fake_task)
    expect(task_string).to be
  end

  it "formats an incomplete task" do
    fake_task = double(:fake_task, title: "fake_task", complete?: false)
    task_string = TaskFormatter.new(fake_task)
    expect(task_string.format).to eq "[ ] fake_task"
  end

  it "formats a complete task" do
    fake_task = double(:fake_task, title: "fake_task", complete?: true)
    task_string = TaskFormatter.new(fake_task)
    expect(task_string.format).to eq "[x] fake_task"
  end

  end



