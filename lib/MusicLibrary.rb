class MusicLibrary
  def initialize
    @list = []
  end

  def add(track) # track is an instance of Track
    @list << track
  end

  def all
    return @list
  end
  
  def search(keyword) # keyword is a string
    return @list.select {|track|
    track.matches?(keyword)}
  end
end


