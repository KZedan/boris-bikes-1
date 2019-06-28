require "bike"
require "van"

class Garage

  def repair
    if Bike.broken
      true
    else
      false
    end
  end

end
