class Group
  include Mongoid::Document

# fields
  field :name, type: String, :default => ""

# relations
  belongs_to :lecture
  belongs_to :leader, :class_name => "Student", :inverse_of => :managing_groups
  has_and_belongs_to_many :students
  has_many :timetables, :class_name => "Timetable", :as => "ownable", :dependent => :destroy

# validations
  validates :lecture, :presence => true
  validates :leader, :presence => true
end
