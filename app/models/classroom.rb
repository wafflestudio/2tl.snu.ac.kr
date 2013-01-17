#encoding: utf-8
class Classroom
  include Mongoid::Document

# fields
  field :location, type: String, :default => ""

# relations
  #belongs_to :building #FIXME
  has_many :courses, :dependent => :destroy
  has_many :images, :class_name => "Image", :as => "imageable", :dependent => :destroy
  has_many :videos, :class_name => "Video", :as => "videoable", :dependent => :destroy

# validations
  #validates :building, :presence => true #FIXME
end
