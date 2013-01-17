class Student < User
# relations
  belongs_to :department
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :groups
  has_many :managing_groups, :class_name => "Group", :inverse_of => :leader, :dependent => :destroy
  has_many :grades, :dependent => :destroy
end
