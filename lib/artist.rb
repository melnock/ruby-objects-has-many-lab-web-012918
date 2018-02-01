class Artist
attr_reader :name , :songs
  @@song_count = []
  def initialize (name)
    @name = (name)
    @songs = []
  end

  def add_song(song)
    @songs << (song)
    song.artist = self
    @@song_count << song
  end

  def add_song_by_name(song)
    title = Song.new(song)
    @songs << (title)
    title.artist = self
    @@song_count << title
  end

  def self.song_count
    @@song_count = @@song_count.length
  end
end
