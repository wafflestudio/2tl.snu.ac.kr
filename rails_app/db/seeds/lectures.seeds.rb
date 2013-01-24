year_codes = [
  #2006, 2007, 2008, 2009, 2010, 2011, 2012
  #2010
  2013
]
semester_codes = [
  #"1", "S", "2", "W"
  "1"
]

year_codes.each do |year_code|
  semester_codes.each do |semester_code|
    semester = Semester.find_or_create_by(:year => year_code, :season => Semester.season_constant(semester_code))

    Dir[Rails.root + "../crawl/txt/#{year_code}_#{semester_code}*.txt"].each do |txtfile|
      File.open(txtfile, "r") do |infile|
        count = 0
        while(line = infile.gets) 
          if count == 0
            meta = line.split('/')
            meta_college = meta[2].split(';')
            college = College.find_or_create_by(:number => meta_college[0], :name => meta_college[1])
          elsif count > 2
            meta_lecture = line.split(';')

            classification = meta_lecture[0]
            department_name = meta_lecture[1]
            academic_year = meta_lecture[2]
            course_number = meta_lecture[3]
            lecture_number = meta_lecture[4]
            course_title = meta_lecture[5]
            credit = meta_lecture[6]
            class_time = meta_lecture[7]
            locations = meta_lecture[8]
            instructor_name = meta_lecture[9]
            quota = meta_lecture[10]
            enrollment = meta_lecture[11]
            remark = meta_lecture[12]
            category = meta_lecture[13].split("_").first
            sub_category = meta_lecture[13].split("_").last

            course = Course.find_or_create_by(:number => course_number, :title => course_title, :credit => credit)

            department = Department.find_or_create_by(:name => department_name, :college_id => college._id)
            instructor = Instructor.find_or_create_by(:name => instructor_name, :department_id => department._id)

            lecture = Lecture.find_or_create_by(:number => lecture_number, :semester_id => semester._id, :department_id => department._id, :course_id => course._id, :instructor_id => instructor._id)
            lecture.time = class_time
            lecture.location = locations
            lecture.quota = quota
            lecture.enrollment = 0
            lecture.remark = remark

            if locations.empty?
              lecture.classrooms = []
            else
              locations.split("/").each do |location|
                meta_location = location.sub("-", "$").split("$")
                building_location = meta_location[0]
                classroom_location = meta_location[1]
                building = Building.find_or_create_by(:location => building_location)
                classroom = Classroom.find_or_create_by(:location => classroom_location, :building_id => building._id)
                lecture.classrooms << classroom if !classroom.nil?
              end
              lecture.classrooms.uniq
            end

            puts lecture.erros.full_messages.to_s if !lecture.save
          end
          count += 1
        end
      end
    end
  end
end
