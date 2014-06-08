class BoundingBox
  def initialize(left_edge, bottom_edge, width, height)
    @left_edge = left_edge
    @bottom_edge = bottom_edge
    @width = width
    @height = height
  end

  def width
    @width
  end

  def height
    @height
  end

  def left
    @left_edge
  end

  def right
    @left_edge + @width
  end

  def top
    @bottom_edge + @height
  end

  def bottom
    @bottom_edge
  end

  def contains_point?(x, y)
    if
      x >= left && x <= right && y >= bottom && y <= top
      return true
    else
      return false
    end
    #should return true if given (x, y) coordinate is within the box
  end
end
