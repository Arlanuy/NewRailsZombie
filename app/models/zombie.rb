class Zombie < ActiveRecord::Base
  has_one :brain
  scope :rotting, where(rotting: true)
  scope :fresh, where("age <20")
  scope :recent, order("created_at_desc").limit(3)

  before_save :make_rotting

  def make_roting
    self.rotting = true if age > 20
    end
  end
end
