class CandyBarsController < ApplicationController
  def index
    @candy_bars = CandyBar.all
  end

  def show
    @candy_bar = CandyBar.find(params[:id])
  end
end
