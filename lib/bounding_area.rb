require_relative 'bounding_box.rb'
class BoundingArea
  def initialize(binding_area)
    @binding_area = binding_area
  end

  def contains_point?(x, y)
    if @binding_area == []
      return false
    end

    @binding_area.each do |rectangle|
      return rectangle.contains_point?(x, y)
    end
    #returns true if the given (x, y) coordinate is within any of the bounding box areas
  end
end
