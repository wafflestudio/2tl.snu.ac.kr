class Post
  include Mongoid::Document
  include Mongoid::Timestamps

# fields
  field :name, type: String, :default => ""
  field :content, type: String, :default => ""

# relations
  belongs_to :user
  has_many :docs, :class_name => "Doc", :as => "docable", :dependent => :destroy
  has_many :comments, :class_name => "Comment", :as => "commentable", :dependent => :destroy

# validataions
  validates :user, :presence => true
end
