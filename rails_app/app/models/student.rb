class Student < User
# relations
  belongs_to :department
  has_and_belongs_to_many :lectures
  has_and_belongs_to_many :groups
  has_many :managing_groups, :class_name => "Group", :inverse_of => :leader, :dependent => :destroy
  has_many :reports, :dependent => :destroy
  has_many :timetables, :class_name => "Timetable", :as => "ownable", :dependent => :destroy
end
