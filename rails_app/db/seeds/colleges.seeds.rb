puts "SEED::COLLEGE"

doc = Nokogiri::XML(File.open(Rails.root + "../crawl/hakgwa_list.xml"))

doc.xpath('/hakgwa-list/hakgwa').each do |hakgwa|
  department_number = hakgwa.attr('id')
  name_ko = hakgwa.xpath('hakgwanm').text.strip
  name_en = hakgwa.xpath('hakgwaenm').text.strip
  college_number = hakgwa.xpath('daehakc').text
  update_date = hakgwa.xpath('update-date').text

  if college_number.to_s == department_number.to_s
    college = College.find_or_create_by(:number => college_number, :name => name_ko)
    puts college.errors.full_messages.to_a
    if !college.nil?
      college.name_translations = {"ko" => college.name, "en" => name_en}
      puts college.errors.full_messages.to_a.to_s if !college.save
    end
  end
end

puts " => #{College.count}"
