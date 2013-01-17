class Comment
  include Mongoid::Document
  include Mongoid::Timestamps::Created

# fields
  field :content, type: String, :default => ""

# relations
  belongs_to :user
  belongs_to :commentable, :polymorphic => true

# validations
  validates :user, :presence => true
  validates :commentable, :presence => true
end
