require('Minitest/autorun')
require('MiniTest/rg')
require('Pry')
require_relative('../song')



class SongTest < MiniTest::Test


  def setup
    @song1 = Song.new("Heroes", "David Bowie", "Rock")
    @song2 = Song.new("Crazy", "Patsy Cline", "Pop")
    @song3 = Song.new("Like a Virgin", "Madonna", "Pop")
    @song4 = Song.new("Albatross", "Fleetwood Mac", "Rock")
    @song5 = Song.new("Green Green Grass of Home", "Tom Jones", "Pop")
    @song6 = Song.new("Born to Run", "Bruce Springsteen", "Rock")

    @rock_songs = [@song1, @song4, @song6]
    @pop_songs = [@song2, @song3, @song5]
    @all_songs = [@rock_songs, @pop_songs]

    # @rock_room = Room.new("Rock Room", 5, @rock_songs)
    # @pop_room = Room.new("Pop Room", 5, @pop_songs)
    #
    # @guest1 = Guest.new("Nancy")
    # @guest2 = Guest.new("Sid")
    # @guest3 = Guest.new("Kevin")
  end

def test_song_has_title
  assert_equal("Heroes", @song1.title)
end

def test_song_has_artist
  assert_equal("Madonna", @song3.artist)
end

def test_song_has_genre
  assert_equal("Rock", @song6.genre)
end

end
