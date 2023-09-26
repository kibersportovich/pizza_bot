require_relative 'validations/arguments_validator'
require_relative 'validations/string_validator'
require_relative 'point'

class Parser
  extend ArgumentsValidator
  extend StringValidator

  def self.call(str)
    validates_string str
    str = str.split(' ', 2)
    field = str[0]
    points = str[1].scan(/[0-9]+/).map { |i| i.to_i }
    validates_field field
    validates_points field, points
    (1..points.length - 1).step(2).map { |i| Point.new(points[i - 1], points[i]) }
  end
end
