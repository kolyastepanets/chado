class PagesController < ApplicationController
  def landing
    @perfomances = Perfomance.all
    @week_action = WeekAction.first
  end
end
