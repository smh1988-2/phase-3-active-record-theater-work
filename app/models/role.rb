class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    auditions.collect{|actor| actor.actor}
  end

  def all_actors_cast
    auditions.where(hired:true).collect{|actor| p "#{actor.actor} was cast in the role of #{character_name} for our #{actor.location} production."}
  end

  def locations
    auditions.collect{|actor| actor.location}
  end

  def lead
    if auditions.find_by(hired: true) 
        auditions.find_by(hired: true)
    else
        p "No actor has been hired!"
    end
  end

  def understudy
    if auditions.where(hired: true) 
        auditions.where(hired: true)[1]
    else
        p "No understudy has been hired!"
    end
  end

end