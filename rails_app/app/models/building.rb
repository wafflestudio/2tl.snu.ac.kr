class Building
  include Mongoid::Document

# constants
  GWANAK=1
  YEONGEON=2
  SUWON=3

# fields
  field :type, type: Integer, :default => GWANAK
  field :location, type: String
  field :name, type: String

# relations
  has_many :classrooms, :dependent => :destroy
end
