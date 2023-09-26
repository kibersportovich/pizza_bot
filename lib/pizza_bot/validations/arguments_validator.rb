module ArgumentsValidator
  def validates_field(field)
    field = field.split('x').map { |i| i.to_i }
    return if field[0] >= 1 && field[1] >= 1

    raise ArgumentError, 'минимальный размер поля 1x1'
  end

  def validates_points(field, points)
    field = field.split('x').map { |i| i.to_i }
    (0..points.size - 1).each do |i|
      raise ArgumentError, 'размеры точек выходят за границы поля' if points[i] > field[i % 2]
    end
  end
end
