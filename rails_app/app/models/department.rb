class Department
  include Mongoid::Document

# fields
  field :number, type: String, :default => ""

  field :name, type: String, :default => "", localize: true
  field :update_date, type: Integer, :default => 0

  field :address, type: String, :default => ""
  field :homepage, type: String, :default => ""
  field :phone, type: String, :default => ""
  field :fax, type: String, :default => ""
  field :work_hours, type: String, :default => ""

# relations
  belongs_to :college
  has_many :lectures, :dependent => :destroy
  has_many :instructors, :dependent => :destroy
  has_many :images, :class_name => "Image", :as => "imageable", :dependent => :destroy
  has_many :videos, :class_name => "Video", :as => "videoable", :dependent => :destroy

# validations
  validates :college, :presence => true

# processing
  index({ number: 1, name: 1 }, { background: true })
end
