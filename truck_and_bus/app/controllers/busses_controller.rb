class BussesController < ApplicationController
  def index
    @busses = Bus.all
  end
end
