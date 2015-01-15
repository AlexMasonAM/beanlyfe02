class FiretrucksController < ApplicationController
  def index
    @firetrucks = Firetruck.all
  end
end
