class SearchesController < ApplicationController
  def index
    @searches = SearchService.new(params["search"]).run
  end
end
