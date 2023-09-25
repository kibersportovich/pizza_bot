require_relative 'input'
require_relative 'parser'
require_relative 'instructions'
require_relative 'output'

class Program
  def self.call
    Output::call(Instructions::call(Parser::call(Input.())))
  end
end
