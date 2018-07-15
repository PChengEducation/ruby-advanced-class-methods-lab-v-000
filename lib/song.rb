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

def self.find_or_create_by_name (find_a_song)
  did_i_find_it = self.all.detect {|x| x.name == find_a_song}
    if did_i_find_it == nil
      @new_song = self.new
      @new_song.name = find_a_song
      @new_song.save
      @new_song
    else
      did_i_find_it
    end
end

end #end of the Song class
