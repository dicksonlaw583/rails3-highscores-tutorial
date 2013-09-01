class Highscore < ActiveRecord::Base
  attr_accessible :name, :score

  def self.top(n)
  	self.limit(n).order('score desc')
  end
end
