require "../lib/diary.rb"

RSpec.describe Diary do
  it "constructs" do
    diary = Diary.new("Hello, world!")
    expect(diary).to be
  end

  it "allows reading of the diary" do
    diary = Diary.new("Hello, world!")
    expect(diary.read_it).to eq "Hello, world!"
  end
end