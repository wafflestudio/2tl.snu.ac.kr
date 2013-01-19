#!/bin/sh

#학문의 기초
year=$1
semester=$2

if test $# -lt 2; then
	echo "Usage : sh get_htm.sh <year ..|2013|..> <semester 1: spring, S: summer, 2: autumn, W: winter>"
	exit
fi

#학문의기초 - ALL
filename="raw/"$year"_"$semester"_basic_all.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=10"
wget -O $filename $address
#학문의 기초 - 국어와 작문
filename="raw/"$year"_"$semester"_basic_korean.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=10&yungyuk_code=11"
wget -O $filename $address
#학문의 기초 - 외국어와 외국문화
filename="raw/"$year"_"$semester"_basic_foreign.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=10&yungyuk_code=12"
wget -O $filename $address
#학문의 기초 - 기초과학
filename="raw/"$year"_"$semester"_basic_science.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=10&yungyuk_code=17"
wget -O $filename $address

#핵심교양 - 문학과 예술
filename="raw/"$year"_"$semester"_core_art.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=13"
wget -O $filename $address
#핵심교양 - 역사와 철학
filename="raw/"$year"_"$semester"_core_history.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=14"
wget -O $filename $address
#핵심교양 - 사회와 이념
filename="raw/"$year"_"$semester"_core_society.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=15"
wget -O $filename $address
#핵심교양 - 자연의 이해
filename="raw/"$year"_"$semester"_core_nature.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=16"
wget -O $filename $address
#핵심교양 - 자연과 기술
filename="raw/"$year"_"$semester"_core_technology.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=31"
wget -O $filename $address
#핵심교양 - 생명과 환경
filename="raw/"$year"_"$semester"_core_biology.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=20&yungyuk_code=32"
wget -O $filename $address

#일반교양 - 국어와 작문
filename="raw/"$year"_"$semester"_normal_korean.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=11"
wget -O $filename $address
#일반교양 - 외국어와 외국문화
filename="raw/"$year"_"$semester"_normal_foreign.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=12"
wget -O $filename $address
#일반교양 - 문학과 예술
filename="raw/"$year"_"$semester"_normal_art.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=13"
wget -O $filename $address
#일반교양 - 역사와 철학
filename="raw/"$year"_"$semester"_normal_history.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=14"
wget -O $filename $address
#일반교양 - 사회와 이념
filename="raw/"$year"_"$semester"_normal_society.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=15"
wget -O $filename $address
#일반교양 - 자연의 이해
filename="raw/"$year"_"$semester"_normal_nature.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=16"
wget -O $filename $address
#일반교양 - 기초과학
filename="raw/"$year"_"$semester"_normal_science.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=17"
wget -O $filename $address
#일반교양 - 체육 및 기타
filename="raw/"$year"_"$semester"_normal_exercise.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=18"
wget -O $filename $address
#일반교양 - 기초교육 특별프로그램
filename="raw/"$year"_"$semester"_normal_special.htm"
address="https://snuhaksa.snu.ac.kr/ssg/Ssg02102.jsp?job_gubun=1&gaesul_year="$year"&gaesul_hakgi="$semester"&sangwi_yungyuk=30&yungyuk_code=19"
wget -O $filename $address
