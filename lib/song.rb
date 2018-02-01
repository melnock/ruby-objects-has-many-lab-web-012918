class Song
attr_reader :name
attr_accessor :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
