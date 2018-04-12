class HomeController < ApplicationController
  def splash
    @teams = Team.alphabetical.all
  end
end
