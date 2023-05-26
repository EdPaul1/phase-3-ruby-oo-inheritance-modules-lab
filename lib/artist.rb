class Artist
  attr_accessor :name, :songs

  extend Findable
  include Paramable

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@all = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@all
  end

  # def self.find_by_name(name)
  #   @@artists.detect {|a| a.name == name}
  # end

  def add_song(song)
    @songs << song
  end

  def add_songs(songs)
    @songs.concat(songs)
  end

end
