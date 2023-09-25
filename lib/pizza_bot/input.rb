require_relative 'validations/string_validator'

class Input
  extend StringValidator
  def self.call
    str = if ARGV.size.positive?
            ARGV.join(' ')
          else
            $stdin.gets.chomp
          end
    validates_string str
    str
  end
end
