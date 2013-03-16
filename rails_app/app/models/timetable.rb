#encoding: utf-8
class Timetable
  include Mongoid::Document
  include Mongoid::Timestamps

# constants
  OFFICIAL=1
  PERSONAL=2

# fields
  field :type, type: String, :default => OFFICIAL
  field :time, type: String

# relations
  belongs_to :semester
  belongs_to :ownable, :polymorphic => true
  has_and_belongs_to_many :lectures

# validations
  validates :semester, :presence => true
  validates :ownable, :presence => true
# methods
  def self.parse_grades(grades)
    seasons = {'1' => 0, 'S' => 1, '2' => 2, 'W' => 3}
    days = {'월' => 0, '화' => 1, '수' => 2, '목' => 3, '금' => 4}

    time = Time.now
    day = time.day - time.wday + 1
    month = time.month

    json = []

    course = grades['seongjeok_info']['course'].last
    course = course['seongjeok'] || []

    course.each do |seongjeok|
      course_number = seongjeok['gyocode']
      lecture_number = seongjeok['jangjwacode'].to_s.strip
      course_title = seongjeok['gyoname'] 
      course_classification = seongjeok['gyogubunname'] 
      course_credit = seongjeok['hakjeom']
      lecture_grade = seongjeok['sungjuk']

      year = seongjeok['hyear'].to_i
      season = seasons[seongjeok['hakgi'].to_s].to_i

      course = Course.where(:number => course_number).limit(1).first
      logger.info "#" + course_title if course.nil?
      lecture = course.lectures.select {|l| l.number == lecture_number && l.semester.year == year && l.semester.season == season}.first unless course.nil?

      unless lecture.nil? 
        lecture.time.split("/").each do |time|
          time_period = self.get_time(time)
          start_time = time_period.first
          end_time = time_period.last

          start_date = "#{year}-#{3 + 3 * season}-#{day + days[time.first].to_i} #{start_time}"
          end_date = "#{year}-#{3 + 3 * season}-#{day + days[time.first].to_i} #{end_time}"
          text = "#{course_title}(#{course_classification}, #{lecture_grade}[#{course_credit}])"

          json << {start_date: start_date, end_date: end_date, text: text}
        end
      end
    end

    json.uniq
  end
  def self.parse_grade #TODO
    json = []
    json.uniq
  end
  def self.parse_timetable(courses)
    seasons = {'1' => 0, 'S' => 1, '2' => 2, 'W' => 3}
    days = {'월' => 0, '화' => 1, '수' => 2, '목' => 3, '금' => 4}

    time = Time.now
    day = time.day - time.wday + 1
    month = time.month

    json = []

    courses = courses['timetable'] || []
    courses.each do |course|
      course_number = course['gyo_code']
      lecture_number = course['gangjwa_code'].to_s.strip
      course_title = course['gyo_name'] 
      course_classification = ""
      course_credit = course['length'].to_i / 2
      lecture_grade = Grade::F

      year = course['year'].to_i
      season = seasons[course['hakgi'].to_s].to_i

      course = Course.where(:number => course_number).limit(1).first
      logger.info "#" + course_title if course.nil?
      lecture = course.lectures.select {|l| l.number == lecture_number && l.semester.year == year && l.semester.season == season}.first unless course.nil?

      unless lecture.nil? 
        lecture.time.split("/").each do |time|
          time_period = self.get_time(time)
          start_time = time_period.first
          end_time = time_period.last

          start_date = "#{year}-#{3 + 3 * season}-#{day + days[time.first].to_i} #{start_time}"
          end_date = "#{year}-#{3 + 3 * season}-#{day + days[time.first].to_i} #{end_time}"
          text = "#{course_title}(#{course_credit}학점)"

          json << {start_date: start_date, end_date: end_date, text: text}
        end
      end
    end

    json.uniq
  end
  def self.get_time(time)
    start_time = (time[time.index('(')+1...time.index(')')].split("-").first.to_f * 60).to_i

    start_hour = 8 + start_time / 60
    start_minute = start_time % 60

    end_time = (time[time.index('(')+1...time.index(')')].split("-").last.to_f * 60).to_i
    end_minute = start_minute + end_time % 60

    end_hour = start_hour + end_time / 60 + end_minute / 60
    end_minute = end_minute % 60

    ["#{start_hour}:#{(start_minute.to_s + "0")[0..1]}:00", "#{end_hour}:#{(end_minute.to_s + "0")[0..1]}:00"]
  end
end
