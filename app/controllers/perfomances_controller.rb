class PerfomancesController < ApplicationController
  def index
    @perfomances = Perfomance.all
  end

  def show
    @perfomance = Perfomance.find(params[:id])
  end
end
