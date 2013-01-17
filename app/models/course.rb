class Course
  include Mongoid::Document

# relations
  belongs_to :semester
  belongs_to :lecture
  belongs_to :professor
  has_and_belongs_to_many :students, :dependent => :destroy
  has_many :grades, :dependent => :destroy
  has_many :groups, :dependent => :destroy
  has_many :posts, :dependent => :destroy

# validations
  validates :semester, :presence => true
  validates :lecture, :presence => true
  validates :professor, :presence => true
end
