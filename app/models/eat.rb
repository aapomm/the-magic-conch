class Eat < ActiveRecord::Base

  def self.random_eat
    all_eats = Eat.all
    all_eats[rand(all_eats.length)]
  end

end
