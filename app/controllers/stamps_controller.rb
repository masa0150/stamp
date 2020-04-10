class StampsController < ApplicationController
  def index
    @stamp = Stamp.all
  end
end