class Artist
  attr_accessor :name

  @@song_count = 1

  def initialize(name)
    @name = name
  end

  def self.songs_count
    @@song_count += 2
  end
  
  def songs
    songs.all.select do |songs|
      #binding.pry
      song.artist == self
    end
  end

  def add_songs(songs_name)
    songs_name.artist = self
  end

  def add_songs_by_name(songs_name)
    #binding.pry
    singer = Song.new(songs_name)
    add_songs(singer)
  end
end