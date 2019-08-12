require('Minitest/autorun')
require('MiniTest/rg')
require('Pry')
require_relative('../room')
require_relative('../song')
require_relative('../guest')


class RoomTest < MiniTest::Test

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

    @rock_room = Room.new("Rock Room", 5, @rock_songs)
    @pop_room = Room.new("Pop Room", 1, @pop_songs)
    #
    @guest1 = Guest.new("Nancy")
    @guest2 = Guest.new("Sid")
    @guest3 = Guest.new("Kevin")
  end

  def test_room_has_name
    assert_equal("Rock Room", @rock_room.name)
  end

  def test_room_capacity
    assert_equal(1, @pop_room.capacity)
  end

  def test_rock_room_has_songs
    expected = [@song1, @song4, @song6]
    assert_equal(expected, @rock_room.playlist)
    # p @rock_songs
  end

  def test_pop_room_has_songs
    expected = [@song2, @song3, @song5]
    assert_equal(expected, @pop_room.playlist)
    # p @pop_songs
  end

  def test_room_is_empty
    assert_equal(0, @rock_room.guest_count)
    # p @rock_room
  end

  def test_add_guest_to_room
    @rock_room.add_guest_to_room(@guest1)
    assert_equal(1, @rock_room.guest_count)
    # p @rock_room.guest.count
  end

  def test_remove_guest_from_room
    @rock_room.add_guest_to_room(@guest1)
    @rock_room.remove_guest_from_room(@guest1)
    assert_equal(0, @rock_room.guest_count)
    # p @rock_room.guest.count
  end

  def test_add_guest_check_rock_room_has_capacity__true
    @rock_room.check_room_has_capacity(@guest1, @rock_room.capacity)
    4.times{@rock_room.add_guest_to_room(@guest1)}
    assert_equal(5, @rock_room.capacity)#??
  end

  def test_add_guest_check_rock_room_has_capacity__false
    @rock_room.check_room_has_capacity(@guest1, @rock_room.capacity)
    6.times{@rock_room.add_guest_to_room(@guest1)}
    assert_equal(5, @rock_room.capacity)#??
    # p @rock_room.guest_count
    # p @rock_room.capacity
  end


end
