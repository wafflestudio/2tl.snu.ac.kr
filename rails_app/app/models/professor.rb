class Professor < User

# fields
  field :code, type: String, :default => ""

  field :name, type: String, :default => ""

  field :address, type: String, :default => ""
  field :homepage, type: String, :default => ""
  field :phone, type: String, :default => ""
  field :fax, type: String, :default => ""
  field :work_hours, type: String, :default => ""

# relations
  belongs_to :department
  has_many :courses, :dependent => :destroy

# validations
  validates :department, :presence => true
end
