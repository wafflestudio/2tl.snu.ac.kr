class Grade
  include Mongoid::Document

# contants
  APLUS=4.3
  A=4.0
  AMINUS=3.7
  BPLUS=3.3
  B=3.0
  BMINUS=2.7
  CPLUS=2.3
  C=2.0
  CMINUS=1.7
  DPLUS=1.3
  D=1.0
  DMINUS=0.7
  F=0.0

# fields
  field :grade, type: Float, :default => B
  field :description, type: String, :default => ""

# relations
  belongs_to :course
  belongs_to :student

# validations
  validates :course, :presence => true
  validates :student, :presence => true
end
