#coding:utf-8

#수강편람을 긁어옴
#인자 : year semester
require 'net/http'
require 'roo'
require 'json'

if ARGV.length != 2 then
	puts "Usage : ruby fetch.rb <year ..|2013|..> <semester 1: spring, S: summer, 2: autumn, W: winter>"
	exit!
end
year = ARGV[0]
semester = ARGV[1] #1/S/2/W

if !(year.to_i > 1994) then
	puts "'year' shuold be greater than 1994"
	exit!
elsif !["1", "2", "S", "W"].include?(semester) then
	puts "'semester' should be in [1, 2, S, W]"
	exit!
end

system("mkdir raw")
system("mkdir xls")
system("mkdir txt")

category_map = {} #"xxx.xxx;yyy => "학문의 기초""

#htm file download (wget)
`sh get_htm.sh #{"#{year} #{semester}"}`
Dir["raw/#{year}_#{semester}*.htm"].each do |htmfile|
	result = `ruby parsing_htm.rb #{"#{htmfile}"}`.split("\n")
	#학문의 기초 - ALL
	if htmfile.include?("basic_all") then
		result.each{|x| category_map[x] = "basic" unless category_map[x]}
	#학문의 기초 - 외국어와 외국문화
	elsif htmfile.include?("basic_foreign") then
		result.each{|x| category_map[x] = "basic_foreign"}
	#학문의 기초 - 국어와 작문
	elsif htmfile.include?("basic_korean") then
		result.each{|x| category_map[x] = "basic_korean"}
	#학문의 기초 - 기초과학
	elsif htmfile.include?("basic_science") then
		result.each{|x| category_map[x] = "basic_science"}

	#핵심교양 - 문학과 예술
	elsif htmfile.include?("core_art") then
		result.each{|x| category_map[x] = "core_art"}
	#핵심교양 - 생명과 환경
	elsif htmfile.include?("core_biology") then
		result.each{|x| category_map[x] = "core_biology"}
	#핵심교양 - 역사와 철학
	elsif htmfile.include?("core_history") then
		result.each{|x| category_map[x] = "core_history"}
	#핵심교양 - 자연의 이해
	elsif htmfile.include?("core_nature") then
		result.each{|x| category_map[x] = "core_nature"}
	#핵심교양 - 사회와 이념
	elsif htmfile.include?("core_society") then
		result.each{|x| category_map[x] = "core_society"}
	#핵심교양 - 자연과 기술
	elsif htmfile.include?("core_technology") then
		result.each{|x| category_map[x] = "core_technology"}

	#일반교양 - 문학과 예술
	elsif htmfile.include?("normal_art") then
		result.each{|x| category_map[x] = "normal_art"}
	#일반교양 - 체육 및 기타
	elsif htmfile.include?("normal_exercise") then
		result.each{|x| category_map[x] = "normal_exercise"}
	#일반교양 - 외국어와 외국문화
	elsif htmfile.include?("normal_foreign") then
		result.each{|x| category_map[x] = "normal_foreign"}
	#일반교양 - 역사와 철학
	elsif htmfile.include?("normal_history") then
		result.each{|x| category_map[x] = "normal_history"}
	#일반교양 - 국어와 작문
	elsif htmfile.include?("normal_korean") then
		result.each{|x| category_map[x] = "normal_korean"}
	#일반교양 - 자연의 이해
	elsif htmfile.include?("normal_nature") then
		result.each{|x| category_map[x] = "normal_nature"}
	#일반교양 - 기초과학
	elsif htmfile.include?("normal_science") then
		result.each{|x| category_map[x] = "normal_science"}
	#일반교양 - 사회와 이념
	elsif htmfile.include?("normal_society") then
		result.each{|x| category_map[x] = "normal_society"}
	#일반교양 - 기초교육 특별프로그램
	elsif htmfile.include?("normal_special") then
		result.each{|x| category_map[x] = "normal_special"}
	end
end
puts "category mapping complete"

colleges = [
  #[code, korean_title, english_title]
  ["100", "인문대학", ""],
  ["200", "사회과학대학", ""],
  ["250", "경영대학", ""],
  ["270", "법과대학", ""],
  ["300", "자연과학대학", ""],
  ["350", "생활과학대학", ""],
  ["370", "약학대학", ""],
  ["400", "공과대학", ""],
  ["490", "융합과학기술대학원", ""],
  ["500", "농업생명과학대학", ""],
  ["550", "수의과대학", ""],
  ["600", "미술대학", ""],
  ["650", "음악대학", ""],
  ["700", "사범대학", ""],
  ["800", "의과대학", ""],
  ["810", "간호대학", ""],
  ["820", "대학원", ""],
  ["850", "치과대학", ""],
  ["860", "치의학대학원", ""],
  ["870", "국제대학원", ""],
  ["900", "보건대학원", ""],
  ["910", "의학대학원", ""],
  ["920", "행정대학원", ""],
  ["930", "법학전문대학원", ""],
  ["940", "환경대학원", ""],
  ["980", "경영전문대학원", ""],
  ["990", "자유전공학부", ""],
  ["9HH", "학생설계전공", ""],
  ["9XX", "무소속대학", ""],
  ["A250", "경영대학원", ""],
  ["A351", "가정대학", ""],
]

colleges.each do |elem|
  college = elem[0]
  college_title_ko = elem[1]
  college_title_en = elem[2]

  #download 
  puts "Start fetching...#{year}/#{semester}/#{college};#{college_title_ko};#{college_title_en}"
  address="/sugang/JACC110.do?srchGaesulYear=#{year}&srchGaesulHakgi=#{semester}&srchDaehakCode=#{college}&srchFlag=0&workType=EX&langKnd=KOR"
  xls_filename="#{Dir.getwd()}/xls/#{year}_#{semester}_#{college}.xls"
  txt_filename="#{Dir.getwd()}/txt/#{year}_#{semester}_#{college}.txt"

  req=Net::HTTP::Get.new('http://sugang.snu.ac.kr/sugang/JACO010.do')
  res=Net::HTTP.start('sugang.snu.ac.kr',80){|http|
    http.request(req)
  }
  cookie=/JSESSIONID\=[^;]*;/.match(res.get_fields("Set-Cookie").join)[0]
  res=Net::HTTP.start('sugang.snu.ac.kr',80){|http|
    http.get(address,{"Cookie"=>cookie})
  }

  open(xls_filename,"w") do |file|
    file.print(res.body)
  end

  result = `file #{xls_filename}`
  if result.match("ASCII") # empty xls if return true
    puts "download skipped : #{year}_#{semester}_#{college}.xls"
    system("rm #{xls_filename}")
    next
  else
    puts "download complete : #{year}_#{semester}_#{college}.xls"
  end

  #convert
  puts "start converting from xls to txt"
  excel = Excel.new(xls_filename);
  m = excel.to_matrix

  def convert_classtime(time)
    if time.include?(",") then
      #수(7,8,9) -> 수(7-3)
      tmp = time.split(",")
      return "#{tmp[0]}-#{tmp.length})"
    elsif time.include?("-")
      return time
    else
      #수(1) -> 수(1-1)
      return time.split(")").join("")+"-1)"
    end
  end

  open(txt_filename, "w") do |file|
    file.puts "#{year}/#{semester}/#{college};#{college_title_ko};#{college_title_en}"
    file.puts Time.now.localtime().strftime("%Y-%m-%d %H:%M:%S")
    file.puts "classification;department;academic_year;course_number;lecture_number;course_title;credit;class_time;location;instructor;quota;enrollment;remark;category"
    3.upto(m.row_size-1) do |i|
      classification = m[i,0]
      department = m[i,1]
      academic_year = m[i,2]
      course_number = m[i,3]
      lecture_number = m[i,4]
      course_title = m[i,5]
      credit = m[i,7].to_i
      class_time = m[i,10]
      location = m[i,12]
      instructor = m[i,13]
      quota = m[i,14].to_i
      enrollment = m[i,15].to_i
      remark = m[i,16].to_s.gsub("\r\n", ", ")
      category = category_map["#{course_number};#{lecture_number}"]

      #classtime 표기 통일
      #수(7,8,9) -> 수(7-3)
      class_time = class_time.split("/").map{|x| convert_classtime(x)}.join("/")

      file.puts "#{classification};#{department};#{academic_year};#{course_number};#{lecture_number};#{course_title};#{credit};#{class_time};#{location};#{instructor};#{quota};#{enrollment};#{remark};#{category}"
    end
  end
end
