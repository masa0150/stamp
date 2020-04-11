class Stamp < ApplicationRecord
  has_many :post
  def index 
    @stamps = Stamp.select("image")
  end
end
