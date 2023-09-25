class Input
  def self.call
    if ARGV.size.positive?
      ARGV.join(' ')
    else
      $stdin.gets.chomp
    end
  end
end
