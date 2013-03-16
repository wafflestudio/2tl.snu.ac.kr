class Video
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Paperclip

# fields
  has_mongoid_attached_file :attachment,
    :default        => ':rails_root/public/system/:class/default.avi',
    :path           => ':rails_root/public/system/:class/:attachment/:id.:extension'
  field :name, type: String, :default => ""
  field :description, type: String, :default => ""

# relations
  belongs_to :videoable, :polymorphic => true

# validations
  validates_attachment_content_type :attachment, :content_type => /video/
  validates_attachment_presence :attachment

  validates :videoable, :presence => true
end
