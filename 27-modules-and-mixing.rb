module Persistable
  def load file_name
    puts "load information to read from #{file_name}"
  end

  def save file_name
    puts "Information to be persisted at #{file_name}"
  end
end

module Movies
  class Score
    include Persistable
  end
end

module Actors
  class Score
    include Persistable
  end
end

m_score = Movies::Score.new
m_score.load "monster-inc.txt"
m_score.save "monster-inc.txt"

puts "========================="

a_score = Actors::Score.new
a_score.load "Antonio Banderas.txt"
a_score.save "Antonio Banderas.txt"

