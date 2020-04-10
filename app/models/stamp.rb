class Stamp < ApplicationRecord
  has_many :comments
  def index 
    @stamps = Stamp.select("image")
  end
end
