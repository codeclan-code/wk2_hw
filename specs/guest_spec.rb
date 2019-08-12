require('Minitest/autorun')
require('MiniTest/rg')
require('Pry')
require_relative('../guest')



class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Nancy")
    @guest2 = Guest.new("Sid")
    @guest3 = Guest.new("Kevin")
  end

  def test_guest_has_name
    assert_equal("Nancy", @guest1.name)
  end


end
