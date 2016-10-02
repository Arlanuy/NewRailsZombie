class Brain < ActiveRecord::Base
  before_save :taste
  def taste
    false
  end
end
