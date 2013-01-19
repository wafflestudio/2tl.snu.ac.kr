class Course
  include Mongoid::Document

# constants
  #CLASIFICATION
  GENEREAL_EDUCATION_COURSES=1#"교양" #A
  MANDANTORY_MAJOR_COURSES=2#"전필" #B
  MAJOR_ELECTIVE=3#"전선" #C
  GENERAL_ELECTIVE=4#"일선" #D
  TEACHER_TRAINING_COURSE=5#"교직" #E
  READING_AND_RESEARCH=6#"논문" #F
  GRAUDATE_SCHOOL_COURSES=7#"대학원" #G
  RECOGNIZED_UNDERGRADUATE=8#"학사인정" #H
  UNDERGRADUATE_COURSES=9#"학사" #*

  #ACADEMIC YEAR
  FRESHMAN=1#1학년
  SOPHOMORE=2#2학년
  JUNIOR=3#3학년
  SENIOR=4#4학년
  OVER_SENIOR=5#5학년
  UNDERGRADUATE=6#학사
  MASTER=7#석사
  PHD=8#박사
  MA_AND_DR=9#석박사
  GRADUATE_SCHOOL=10#대학원

  # CATEGORY
  BASIC=1 #학문의기초
  NORMAL=2 #일반교양
  CORE=3 #핵심교양

  # CONSTITUENT

  # GENERAL CATEGORY

# fields
  field :classfication, type: Integer
  field :academic_year, type: Integer
  field :title, type: String, :default => "", localize: true
  field :number, type: String, :default => ""
  field :credit, type: Integer, :default => 1
  field :general_category, type: Integer
  field :general_subcategory, type: Integer
  field :english, type: Boolean, :default => false
  field :grading_type, type: Boolean, :default => true # true:A~F, false: S&U
  field :constituent, type: Integer

# relations
  has_many :lectures, :dependent => :destroy
  has_and_belongs_to_many :instructors, :dependent => :destroy
end
