class Semester
  include Mongoid::Document

# constants
  SPRING=0
  SUMMER=1
  AUTUMN=2
  WINTER=3

# fields
  field :season, type: Integer, :default => SPRING
  field :year, type: Integer, :default => 2013

# relations
  has_many :lectures, :dependent => :destroy
  has_many :reports, :dependent => :destroy
  has_many :timetables, :dependent => :destroy

# methods
  def self.season_constant(variable)
    if variable == "1" || variable == 1
      return SPRING
    elsif variable == "S"
      return SUMMER
    elsif variable == "2" || variable == 2
      return AUTUMN
    elsif variable == "W"
      return WINTER
    end
  end
end
