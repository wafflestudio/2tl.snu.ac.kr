class Semester
  include Mongoid::Document

  SPRING=0
  SUMMER=1
  AUTUMN=2
  WINTER=3

# fields
  field :season, type: Integer, :default => SPRING
  field :year, type: Integer, :default => 2013

# relations
  has_many :courses, :dependent => :destroy
end
