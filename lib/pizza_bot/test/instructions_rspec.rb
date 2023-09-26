require 'rspec'

require_relative '../instructions'

array1 = [Point.new(1, 3), Point.new(4, 4)]

array2 = [Point.new(0, 0), Point.new(1, 3), Point.new(4, 4),
          Point.new(4, 2), Point.new(4, 2), Point.new(0, 1),
          Point.new(3, 2), Point.new(2, 3), Point.new(4, 1)]

describe Instructions do
  it 'should do ok for  array1' do
    expect(Instructions.call(array1))
      .to eq 'ENNNDEEEND'
  end
  it 'should do ok for  array2' do
    expect(Instructions.call(array2))
      .to eq 'DENNNDEEENDSSDDWWWWSDEEENDWNDEESSD'
  end
end
