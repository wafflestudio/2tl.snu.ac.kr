#encoding: utf-8
require 'net/http'
require 'nokogiri'
class GraphController < ApplicationController
  before_filter :configure_http
  before_filter :set_cookie_siticket

  def user #개인정보
    path = "/app/acct_info.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    email = doc.xpath("//email").text
=begin
    render :xml => resp.body
    memberkey = doc.xpath("//memberkey").text
    name = doc.xpath("//name").text
    groupcd = doc.xpath("//groupcd").text
=end

    user = User.find_or_create_by(:email => email)
    sign_in(user.class, user)
    redirect_to after_sign_in_path_for(user)
  end

  def grade_avg #직전 학기 평점
    path = "/app/view_sj_list_pyungjeom.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    render :xml => resp.body
  end
  def grades_avg #전체 학기 평점
    path = "/app/view_sj_list_pyungjeom_all.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    respond_to do |format|
      format.html {render "grades/_graph", :locals => {:grades => Hash.from_xml(resp.body)}}
      format.xml  {render :xml => resp.body}
    end
  end
  def grade #직전 학기 성적
    path = "/app/view_sj_list_seongjeok.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    render :xml => resp.body
  end
  def grades #전체 학기 성적
    path = "/app/view_sj_list_seongjeok_all.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    render :xml => resp.body
  end

  def timetable #직전 학기 시간표
    path = "/app/timetable_list.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    render :xml => resp.body
  end
  def timetables #전체 학기 시간표
    path = "/app/timetable_list_portal.do"

    resp, body = @http.get(path, @cookie)
    doc = Nokogiri::XML(resp.body)

    render :xml => resp.body
  end

  private
  def configure_http
    servers = [
      {:host => "app.snu.ac.kr", :port => 80}
#      {:host => "diana.snu.ac.kr", :port => 38080},
#      {:host => "noel.snu.ac.kr", :port => 38080}
    ]

    server = servers[rand(servers.length)]
    @http = Net::HTTP.new(server[:host], server[:port])
  end
  def set_cookie_siticket
    @siticket = params[:siticket].to_s.gsub(" ", "+")
    redirect_to root_path if @siticket.nil? || @siticket.empty?
    @cookie = {"Cookie" => "SITicket=#{@siticket}"}
  end
end
