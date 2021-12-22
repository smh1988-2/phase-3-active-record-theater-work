class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    update(hired: true)
  end

  def fire_actor
    update(hired: false)
  end


end