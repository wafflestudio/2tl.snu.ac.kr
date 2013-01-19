class Instructor
  include Mongoid::Document

# fields
  field :name, type: String, :default => ""

# relations
  belongs_to :professor
  belongs_to :department
  has_many :lectures, :dependent => :destroy
  has_and_belongs_to_many :courses

# validations
  validates :department, :presence => true
end
