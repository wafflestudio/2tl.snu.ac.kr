#encoding: utf-8
class Lecture
  include Mongoid::Document

# fields
  field :number, type: String

  field :time, type: String
  field :location, type: String
  field :quota, type: Integer, :default => 0
  field :enrollment, type: Integer, :default => 0
  field :remark, type: String

# relations
  belongs_to :semester
  belongs_to :department
  belongs_to :course
  belongs_to :instructor
  has_and_belongs_to_many :classrooms
  has_and_belongs_to_many :students
  has_many :grades, :dependent => :destroy
  has_many :groups, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  has_and_belongs_to_many :timetables, :dependent => :destroy

# validations
  validates :semester, :presence => true
  validates :department, :presence => true
  validates :course, :presence => true
  validates :instructor, :presence => true
end
