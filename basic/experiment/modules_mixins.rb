require_relative 'calculator'
require_relative 'helper'

puts Calculator.add(1, 2)

class Sekardayu
  include Calculator
  include Helper

  def talk
    puts Calculator.add(1, 2)
    Helper.give_help
  end
end

sekar = Sekardayu.new
sekar.talk