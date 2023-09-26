require 'rspec'

require_relative '../parser'
require_relative '../point'

test1 = [Point.new(1, 3), Point.new(4, 4)]

test2 = [Point.new(0, 0), Point.new(1, 3), Point.new(4, 4),
         Point.new(4, 2), Point.new(4, 2), Point.new(0, 1),
         Point.new(3, 2), Point.new(2, 3), Point.new(4, 1)]

describe Parser do
  it 'should do ok for  5x5 (1, 3) (4, 4)' do
    expect(Parser.call('5x5 (1, 3) (4, 4)'))
      .to eq test1
  end
  it 'should do ok for  5x5 (0, 0) (1, 3) (4,4) (4, 2) (4, 2) (0, 1) (3, 2) (2, 3) (4, 1)' do
    expect(Parser.call('5x5 (0, 0) (1, 3) (4,4) (4, 2) (4, 2) (0, 1) (3, 2) (2, 3) (4, 1)'))
      .to eq test2
  end
end
