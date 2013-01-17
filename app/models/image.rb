class Image
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Paperclip

# fields
  has_mongoid_attached_file :attachment
  # :default        => ':rails_root/public/system/:class/:attachment/:style/default.jpg',
  # :styles => {
  # :original => ['1920x1680>', :jpg],
  # :large    => ['500x500>',   :jpg], #TODO
  # :medium   => ['250x250',    :jpg], #TODO
  # :small    => ['100x100#',   :jpg], #TODO
  # :thumb    => ['100x100#',   :jpg], #TODO
  # }
  field :name, type: String, :default => ""
  field :description, type: String, :default => ""

# relations
  belongs_to :imageable, :polymorphic => true

# validations
  validates_attachment_content_type :attachment, :content_type => /image/
  validates_attachment_presence :attachment

  validates :imageable, :presence => true
end
