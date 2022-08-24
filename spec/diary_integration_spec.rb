require "../lib/diary.rb"
require "../lib/secret_diary.rb"

RSpec.describe "Integration" do
  it "allows a diary to be created and read" do
    feelings = Diary.new("I love doggies")
    expect(feelings.read_it).to eq "I love doggies"
  end

  it "allows an instance of diary to be added to secretdiary" do
    feelings = Diary.new("I love doggies")
    thoughts = SecretDiary.new(feelings)
    expect(thoughts).to be
  end

  it "allows an instance of diary to be added to secretdiary and read" do
    feelings = Diary.new("I love doggies")
    thoughts = SecretDiary.new(feelings)
    thoughts.unlock
    expect(thoughts.read).to eq "I love doggies"
  end

  it "allows an instance of diary to be added to secretdiary and start off locked" do
    feelings = Diary.new("I love doggies")
    thoughts = SecretDiary.new(feelings)
    expect(thoughts.read).to eq "Go away!"
  end

  it "allows an instance of diary to be added to secretdiary, be unlocked and read" do
    feelings = Diary.new("I love doggies")
    thoughts = SecretDiary.new(feelings)
    expect(thoughts.read).to eq "Go away!"
    thoughts.unlock
    expect(thoughts.read).to eq "I love doggies"
  end
end