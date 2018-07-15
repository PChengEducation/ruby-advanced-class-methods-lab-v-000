class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create
  @new_song = self.new
  @new_song.save
  @new_song
end

def self.new_by_name (string_name)
  @new_song = self.new
  @new_song.name = string_name
  @new_song
end

def self.create_by_name (string_name)
@new_song = self.new
@new_song.name = string_name
@new_song.save
@new_song
end

def self.find_by_name(string_name)
  self.all.detect {|i| i.name == string_name}

end

def self.find_or_create_by_name
self.find_or_create_by_name
self.create_by_name
find_by_name
end

end #end of the Song class
