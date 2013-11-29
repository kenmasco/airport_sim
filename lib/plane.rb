class Plane

  def initalize
    land
  end

  def flying?
    @flying
  end

  def airborne
    @flying = true
  end

  def take_off
    airborne
  end

  def land
    @flying = false
  end

  def landed
    land
  end

end