class StampsController < ApplicationController
  def index
    @stamp = Stamp.find(2)
    @stamp2 = Stamp.find(3)
    @stamp3 = Stamp.find(4)
  end
end