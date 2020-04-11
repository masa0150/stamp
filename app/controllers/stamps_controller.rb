class StampsController < ApplicationController
  def index
    @stamps = Stamp.all
  end
end