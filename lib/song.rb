
class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Findable
  include Paramable

  # extend reset_all
  # extend count
  # include paramable

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@songs = []


  # def initialize
  #   @@songs << self
  # end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
