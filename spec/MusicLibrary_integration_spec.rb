require "../lib/MusicLibrary.rb"
require "../lib/Track.rb"

#unit testing

RSpec.describe MusicLibrary do
  it "constructs" do
    pop = MusicLibrary.new
  end

  class MusicLibrary
  end

  it "adds and lists tracks" do
    pop = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    pop.add(track_1)
    pop.add(track_2)
    expect(pop.all).to eq [track_1, track_2]
  end

  it "allows searching of tracks" do
    pop = MusicLibrary.new
    track_1 = double :track, matches?: true
    track_2 = double :track, matches?: false
    track_3 = double :track, matches?: true
    pop.add(track_1)
    pop.add(track_2)
    pop.add(track_3)
    expect(pop.search("one")).to eq [track_1, track_3]
  end
end

RSpec.describe Track do
  it "constructs" do
    track_1 = Track.new("Yesterday", "The Beatles")
  class Track
  end
  end

  it "allows a keyword search" do
    track_1 = Track.new("Yesterday", "The Beatles")
    expect(track_1.matches?("Bea")).to eq true
  end

  it "allows a keyword search" do
    track_1 = double :track, matches?: true
    track_2 = double :track, matches?: false
    expect(track_1.matches?("o")).to eq true
    expect(track_2.matches?("o")).to eq false
  end

  it "returns false for bad search" do
    track_1 = Track.new("Yesterday", "The Beatles")
    expect(track_1.matches?("One")).to eq false
  end

  it "searches track by title" do
    pop = MusicLibrary.new
    track_1 = double :track
    expect(track_1).to receive(:matches?).with("two").and_return false
    track_2 = double :track
    expect(track_2).to receive(:matches?).with("two").and_return true
    pop.add(track_1)
    pop.add(track_2)
    expect(pop.search("two")).to eq [track_2]
  end
end


