class Doc
  include Mongoid::Document
  include Mongoid::Paperclip

# fields
  has_mongoid_attached_file :attachment,
    :default        => ':rails_root/public/system/:class/default.txt',
    :path           => ':rails_root/public/system/:class/:attachment/:id.:extension'
  field :name, type: String, :default => ""
  field :description, type: String, :default => ""

# relations
  belongs_to :docable, :polymorphic => true

# validations
  validates_attachment_presence :attachment

  validates :docable, :presence => true
end
