after :colleges do
  puts "SEED::DEPARTMENT"

  doc = Nokogiri::XML(File.open(Rails.root + "../crawl/hakgwa_list.xml"))

  doc.xpath('/hakgwa-list/hakgwa').each do |hakgwa|
    department_number = hakgwa.attr('id')
    name_ko = hakgwa.xpath('hakgwanm').text
    name_en = hakgwa.xpath('hakgwaenm').text
    college_number = hakgwa.xpath('daehakc').text
    update_date = hakgwa.xpath('update-date').text

    college = College.where(:number => college_number).limit(1).first
    next if college.nil?

    department = Department.find_or_create_by(:name => name_ko, :college_id => college._id)
    if !department.nil?
      if update_date.to_i >= department.update_date
        department.name_translations = {"ko" => department.name, "en" => name_en}
        department.number = department_number
        department.update_date = update_date
        puts department.errors.full_messages.to_a.to_s if !department.save
      end
    end
  end
  
  puts " => #{Department.count}"
end
