class Building
  include Mongoid::Document

# relations
  has_many :classrooms, :dependent => :destroy
end
