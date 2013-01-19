class College
  include Mongoid::Document

# fields
  field :number, type: String, :default => ""

  field :name, type: String, :default => "", localize: true

  field :address, type: String, :default => ""
  field :homepage, type: String, :default => ""
  field :phone, type: String, :default => ""
  field :fax, type: String, :default => ""
  field :work_hours, type: String, :default => ""

# relations
  has_many :departments, :dependent => :destroy
  has_many :images, :class_name => "Image", :as => "imageable", :dependent => :destroy
  has_many :videos, :class_name => "Video", :as => "videoable", :dependent => :destroy
end
