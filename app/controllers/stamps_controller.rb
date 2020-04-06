class StampsController < ApplicationController
  def index
    @stamp = Stamp.find(1)
  end
end
