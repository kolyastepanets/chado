class PagesController < ApplicationController
  def landing
    @perfomances = Perfomance.all
    @week_action = WeekAction.first
    @additional_services = AdditionalService.first(6)
  end

  def contacts
  end

  def week_action
    @week_action = WeekAction.first
  end
end
