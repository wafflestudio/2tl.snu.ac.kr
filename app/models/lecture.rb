class Lecture
  include Mongoid::Document

# fields
  field :name, type: String, :default => ""

# relations
  belongs_to :semester
  belongs_to :department
  has_many :courses, :dependent => :destroy

# validations
  validates :semester, :presence => true
  validates :department, :presence => true
end
