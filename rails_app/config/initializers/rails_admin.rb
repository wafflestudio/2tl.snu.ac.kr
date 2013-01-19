# RailsAdmin config file. Generated on January 17, 2013 22:21
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|
  #I18n.default_locale = :de
  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['SNU2TL', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_admin } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'Admin'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'Admin'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Admin', 'Classroom', 'College', 'Comment', 'Course', 'Department', 'Doc', 'Grade', 'Group', 'Image', 'Lecture', 'Post', 'Professor', 'Semester', 'Student', 'Timetable', 'User', 'Video']

  # Include specific models (exclude the others):
  # config.included_models = ['Admin', 'Classroom', 'College', 'Comment', 'Course', 'Department', 'Doc', 'Grade', 'Group', 'Image', 'Lecture', 'Post', 'Professor', 'Semester', 'Student', 'Timetable', 'User', 'Video']

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:



  ###  Admin  ###

  # config.model 'Admin' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your admin.rb model definition

  #   # Found associations:

  #     configure :comments, :has_many_association 
  #     configure :posts, :has_many_association 
  #     configure :profile_image, :has_one_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :email, :text 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :text         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :text 
  #     configure :last_sign_in_ip, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Classroom  ###

  # config.model 'Classroom' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your classroom.rb model definition

  #   # Found associations:

  #     configure :courses, :has_many_association 
  #     configure :images, :has_many_association 
  #     configure :videos, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :location, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  College  ###

  # config.model 'College' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your college.rb model definition

  #   # Found associations:

  #     configure :departments, :has_many_association 
  #     configure :images, :has_many_association 
  #     configure :videos, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :code, :text 
  #     configure :name, :string 
  #     configure :address, :text 
  #     configure :homepage, :text 
  #     configure :phone, :text 
  #     configure :fax, :text 
  #     configure :work_hours, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Comment  ###

  # config.model 'Comment' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your comment.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :commentable, :polymorphic_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :created_at, :datetime 
  #     configure :content, :text 
  #     configure :user_id, :bson_object_id         # Hidden 
  #     configure :commentable_type, :text         # Hidden 
  #     configure :commentable_field, :string         # Hidden 
  #     configure :commentable_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Course  ###

  # config.model 'Course' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your course.rb model definition

  #   # Found associations:

  #     configure :semester, :belongs_to_association 
  #     configure :lecture, :belongs_to_association 
  #     configure :professor, :belongs_to_association 
  #     configure :students, :has_and_belongs_to_many_association 
  #     configure :grades, :has_many_association 
  #     configure :groups, :has_many_association 
  #     configure :posts, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :semester_id, :bson_object_id         # Hidden 
  #     configure :lecture_id, :bson_object_id         # Hidden 
  #     configure :professor_id, :bson_object_id         # Hidden 
  #     configure :student_ids, :serialized         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Department  ###

  # config.model 'Department' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your department.rb model definition

  #   # Found associations:

  #     configure :lectures, :has_many_association 
  #     configure :professors, :has_many_association 
  #     configure :images, :has_many_association 
  #     configure :videos, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :code, :text 
  #     configure :name, :string 
  #     configure :address, :text 
  #     configure :homepage, :text 
  #     configure :phone, :text 
  #     configure :fax, :text 
  #     configure :work_hours, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Doc  ###

  # config.model 'Doc' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your doc.rb model definition

  #   # Found associations:

  #     configure :docable, :polymorphic_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :attachment_file_name, :text         # Hidden 
  #     configure :attachment_content_type, :text         # Hidden 
  #     configure :attachment_file_size, :integer         # Hidden 
  #     configure :attachment_updated_at, :datetime         # Hidden 
  #     configure :attachment, :paperclip 
  #     configure :name, :string 
  #     configure :description, :text 
  #     configure :docable_type, :text         # Hidden 
  #     configure :docable_field, :string         # Hidden 
  #     configure :docable_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Grade  ###

  # config.model 'Grade' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your grade.rb model definition

  #   # Found associations:

  #     configure :course, :belongs_to_association 
  #     configure :student, :belongs_to_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :grade, :float 
  #     configure :description, :text 
  #     configure :course_id, :bson_object_id         # Hidden 
  #     configure :student_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Group  ###

  # config.model 'Group' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your group.rb model definition

  #   # Found associations:

  #     configure :course, :belongs_to_association 
  #     configure :leader, :belongs_to_association 
  #     configure :students, :has_and_belongs_to_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :course_id, :bson_object_id         # Hidden 
  #     configure :leader_id, :bson_object_id         # Hidden 
  #     configure :student_ids, :serialized         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Image  ###

  # config.model 'Image' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your image.rb model definition

  #   # Found associations:

  #     configure :imageable, :polymorphic_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :created_at, :datetime 
  #     configure :attachment_file_name, :text         # Hidden 
  #     configure :attachment_content_type, :text         # Hidden 
  #     configure :attachment_file_size, :integer         # Hidden 
  #     configure :attachment_updated_at, :datetime         # Hidden 
  #     configure :attachment, :paperclip 
  #     configure :name, :string 
  #     configure :description, :text 
  #     configure :imageable_type, :text         # Hidden 
  #     configure :imageable_field, :string         # Hidden 
  #     configure :imageable_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Lecture  ###

  # config.model 'Lecture' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your lecture.rb model definition

  #   # Found associations:

  #     configure :semester, :belongs_to_association 
  #     configure :department, :belongs_to_association 
  #     configure :courses, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :name, :string 
  #     configure :semester_id, :bson_object_id         # Hidden 
  #     configure :department_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Post  ###

  # config.model 'Post' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your post.rb model definition

  #   # Found associations:

  #     configure :user, :belongs_to_association 
  #     configure :docs, :has_many_association 
  #     configure :comments, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :name, :string 
  #     configure :content, :text 
  #     configure :user_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Professor  ###

  # config.model 'Professor' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your professor.rb model definition

  #   # Found associations:

  #     configure :department, :belongs_to_association 
  #     configure :comments, :has_many_association 
  #     configure :posts, :has_many_association 
  #     configure :profile_image, :has_one_association 
  #     configure :courses, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :email, :text 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :text         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :text 
  #     configure :last_sign_in_ip, :text 
  #     configure :code, :text 
  #     configure :name, :string 
  #     configure :address, :text 
  #     configure :homepage, :text 
  #     configure :phone, :text 
  #     configure :fax, :text 
  #     configure :work_hours, :text 
  #     configure :department_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Semester  ###

  # config.model 'Semester' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your semester.rb model definition

  #   # Found associations:

  #     configure :courses, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :season, :integer 
  #     configure :year, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Student  ###

  # config.model 'Student' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your student.rb model definition

  #   # Found associations:

  #     configure :department, :belongs_to_association 
  #     configure :courses, :has_and_belongs_to_many_association 
  #     configure :groups, :has_and_belongs_to_many_association 
  #     configure :comments, :has_many_association 
  #     configure :posts, :has_many_association 
  #     configure :profile_image, :has_one_association 
  #     configure :managing_groups, :has_many_association 
  #     configure :grades, :has_many_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :email, :text 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :text         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :text 
  #     configure :last_sign_in_ip, :text 
  #     configure :department_id, :bson_object_id         # Hidden 
  #     configure :course_ids, :serialized         # Hidden 
  #     configure :group_ids, :serialized         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Timetable  ###

  # config.model 'Timetable' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your timetable.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  User  ###

  # config.model 'User' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your user.rb model definition

  #   # Found associations:

  #     configure :comments, :has_many_association 
  #     configure :posts, :has_many_association 
  #     configure :profile_image, :has_one_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :email, :text 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :text         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :text 
  #     configure :last_sign_in_ip, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Video  ###

  # config.model 'Video' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your video.rb model definition

  #   # Found associations:

  #     configure :videoable, :polymorphic_association 

  #   # Found columns:

  #     configure :_type, :text         # Hidden 
  #     configure :_id, :bson_object_id 
  #     configure :created_at, :datetime 
  #     configure :attachment_file_name, :text         # Hidden 
  #     configure :attachment_content_type, :text         # Hidden 
  #     configure :attachment_file_size, :integer         # Hidden 
  #     configure :attachment_updated_at, :datetime         # Hidden 
  #     configure :attachment, :paperclip 
  #     configure :name, :string 
  #     configure :description, :text 
  #     configure :videoable_type, :text         # Hidden 
  #     configure :videoable_field, :string         # Hidden 
  #     configure :videoable_id, :bson_object_id         # Hidden 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end

end
