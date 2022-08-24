require "../lib/secret_diary.rb"

RSpec.describe SecretDiary do
  it "constructs" do
    fake_diary_entry = double(:fake_diary_entry, read: "My little secret")
    promises = SecretDiary.new(fake_diary_entry)
    expect(promises).to be
  end

  it "rejects when locked" do
    fake_diary_entry = double(:fake_diary_entry, read: "My little secret")
    promises = SecretDiary.new(fake_diary_entry)
    expect(promises.read).to eq "Go away!"
  end

  it "allows reading when unlocked" do
    fake_diary_entry = double(:fake_diary_entry, read_it: "My little secret")
    promises = SecretDiary.new(fake_diary_entry)
    promises.unlock
    expect(promises.read).to eq "My little secret"
  end

  it "locks back up" do
    fake_diary_entry = double(:fake_diary_entry, read: "My little secret")
    promises = SecretDiary.new(fake_diary_entry)
    promises.unlock
    promises.lock
    expect(promises.read).to eq "Go away!"
  end


  end

