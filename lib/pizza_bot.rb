# frozen_string_literal: true

require_relative 'pizza_bot/version'
require_relative 'pizza_bot/program'

module PizzaBot
  def call
    Program.call
  end

  class Error < StandardError; end
  # Your code goes here...
end
