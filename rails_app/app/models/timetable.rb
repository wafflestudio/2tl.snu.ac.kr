class Timetable
  include Mongoid::Document
  include Mongoid::Timestamps

# constants
  OFFICIAL=1
  PERSONAL=2

# fields
  field :type, type: String, :default => OFFICIAL
  field :time, type: String

# relations
  belongs_to :semester
  belongs_to :ownable, :polymorphic => true
  has_and_belongs_to_many :lectures

# validations
  validates :semester, :presence => true
  validates :ownable, :presence => true
end
