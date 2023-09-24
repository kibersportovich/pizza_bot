class ArgumentsValidator
  def validates_points(field, points)
    field = field.split('x').map { |i| i.to_i }
    (0..points.size - 1).each do |i|
      raise ArgumentError, 'вы прописали значения выходящие за размер поля' if points[i] > field[i % 2]
    end
  end
end
