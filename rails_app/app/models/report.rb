#encoding: utf-8
class Report #성적표
  include Mongoid::Document

# fields
  field :grade, type: Float, :default => 3.0

# relations
  belongs_to :semester
  belongs_to :student
  had_many :grades, :dependent => :destroy

# validations
  validates :semester
  validates :student
end
