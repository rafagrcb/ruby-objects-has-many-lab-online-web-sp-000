class Artist
  attr_accessor :name

  @@song_count = 1

  def initialize(name)
    @name = name
  end

  def self.song_count
    @@song_count += 2
  end
  
  def songs
    song.all.select do |songs|
      #binding.pry
      song.artist == self
    end
  end

  def add_songs(song_name)
    song_name.artist = self
  end

  def add_songs_by_name(song_name)
    #binding.pry
    singer = Song.new(song_name)
    add_songs(singer)
  end
end