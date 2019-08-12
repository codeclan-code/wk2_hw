class Room

  attr_reader :name, :capacity, :playlist, :guest

  def initialize(name, capacity, playlist)
    @name = name
    @capacity = capacity
    @playlist = playlist
    @guest = []
  end


  def guest_count()
    return @guest.count
  end

  def  add_guest_to_room(guest)
    @guest << guest
  end

  def remove_guest_from_room(guest)
    @guest.delete(guest)
  end

  def check_room_has_capacity(guest, capacity)
    if @guest.count > capacity
     p "ROOM is FULL!"
    else
        @guest << guest
    end
  end

  

end
