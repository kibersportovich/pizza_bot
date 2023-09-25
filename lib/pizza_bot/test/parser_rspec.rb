require 'rspec'

require_relative '../parser'
require_relative '../point'

describe Parser do
  it 'should do ok for  5x5 (1, 3) (4, 4)' do
    expect(Parser.call('5x5 (1, 3) (4, 4)')).to eq [Point.new(1, 3), Point.new(4, 4)]
  end
end
