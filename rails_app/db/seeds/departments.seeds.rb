doc = Nokogiri::XML(File.open(Rails.root + "../crawl/hakgwa_list.xml"))

doc.xpath('/hakgwa-list/hakgwa').each do |hakgwa|
  college_number = hakgwa.attr('id')
  name_ko = hakgwa.xpath('hakgwanm').text
  name_en = hakgwa.xpath('hakgwaenm').text
  department_number = hakgwa.xpath('daehakc').text
  update_date = hakgwa.xpath('update-date').text

  department = Department.where(:name => name_ko).first
  if !department.nil?
    if update_date.to_i >= department.update_date
      department.name_translations = {"ko" => department.name, "en" => name_en}
      department.number = department_number
      department.update_date = update_date
      puts department.errors.full_messages.to_a.to_s if !department.save
    end
  end
end
