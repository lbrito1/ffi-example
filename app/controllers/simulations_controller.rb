class SimulationsController < ApplicationController
  def index
    params.permit!
    @simulation_result = Simulation.new.simulate(params[:input])
  end
end
