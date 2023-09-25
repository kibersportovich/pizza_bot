# create instructions for pizza bot  (..ENNNDEEEND..)

require_relative 'point'

class Instructions

  def self.call(points)
    str = ''
    point = Point.new(0, 0)
    points.each do |p|
      while point != p
        if p.x != point.x && p.x > point.x
          str += 'E'
          point.x = point.x + 1
          next
        end
        if p.x != point.x && p.x < point.x
          str += 'W'
          point.x = point.x - 1
          next
        end
        if p.y != point.y && p.y > point.y
          str += 'N'
          point.y = point.y + 1
          next
        end
        if p.y != point.y && p.y < point.y
          str += 'S'
          point.y = point.y - 1
          next
        end
      end
      str += 'D'
    end
    str
  end
end
