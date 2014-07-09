=begin
  Challenge: Create a Playlist class

  User Story:
    1.  Can create a new playlist
    2.  Can add or remove song from playlist
    3.  Can

  Pseudocode:
    1. create a Playlist class:
      playlist class will store objects from  Song class

    2. create a Song class:
      methods: add song, num of tracks, delete song, play, play all, display
           delete song
=end


class Song
  attr_accessor :title, :artist, :play

  def initialize(title, artist)
    @title = title
    @artist = artist
    @play = false
  end

end

class Playlist

  attr_accessor :songs

  def initialize(*songs)
    @songs = songs
  end

  def add(*song)
    songs << song
  end

  def num_of_tracks
    songs.count
  end

  def play
    @play = true
    "You press play."
  end

  def play_all
    songs.collect {|each_song| songs.play }
  end

  def stop
    @play = false
    "You ended the track."
  end

  def remove(song)
    songs.pop(song)
  end

  def display
    "#{songs}"
  end

end


#### Driver Code#### The code below should *drive* your coding...

one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

