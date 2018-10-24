class SimulationsController < ApplicationController
  require 'benchmark'

  def index
    params.permit!
    simulator = Simulation.new(params[:input])

    @c_simulation_time = Benchmark.measure { simulator.c_simulation_wrapper }.real
    @ruby_simulation_time = Benchmark.measure { simulator.ruby_simulation }.real

    @c_output = simulator.c_output
    @ruby_output = simulator.ruby_output
  end
end
