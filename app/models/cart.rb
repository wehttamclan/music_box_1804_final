class Cart
  attr_reader :contents

  def initialize(initial_content)
    @contents = initial_content || Hash.new(0)
  end

  def total_count
    @contents.values.sum
  end

  def add_song(song_id)
    @contents[song_id.to_s] ||= 0
    @contents[song_id.to_s] += 1
  end
end
