class Evaluation
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
  field :content, type: String, :default => ""
  field :grade, type: Float, :default => B

# relations
  belongs_to :user
  belongs_to :evaluatable, :polymorphic => true

# validations
  validates :user, :presence => true
  validates :evaluatable, :presence => true
end
