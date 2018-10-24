class Simulation
  extend FFI::Library

  ffi_lib "lib/simulation.so"
  attach_function :c_simulation, [:int], :long

  attr_accessor :input, :ruby_output, :c_output

  def initialize(input)
    @input = input.to_i
  end

  def c_simulation_wrapper
    @c_output = c_simulation(input)
  end

  def ruby_simulation
    output = 0
    1_000.times do |i|
      1_000.times do |j|
        output += i * j * input
      end
    end
    @ruby_output = output
  end
end
