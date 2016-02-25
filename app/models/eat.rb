class Eat < ActiveRecord::Base

  def self.random_eat
    all_eats = Eat.all
    all_eats[rand(all_eats.length)]
  end

  def to_s
    "*#{self.place}*"
  end

  def user
    "<@#{self.slack_user_id}|#{self.added_by}>"
  end

end
