SNU2TL::Application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  devise_for :users

  match "/graph/snu/user"         => "graph#user"
  match "/graph/snu/grade"        => "graph#grade"
  match "/graph/snu/grade/avg"    => "graph#grade_avg"
  match "/graph/snu/grades"       => "graph#grades"
  match "/graph/snu/grades/avg"   => "graph#grades_avg"
  match "/graph/snu/timetable"    => "graph#timetable"
  match "/graph/snu/timetables"   => "graph#timetables"

  match "/graph/snu/timetable/test"    => "graph#timetable_test"

  root :to => "main#home"
  match "/help" => "main#help"
  match "/about" => "main#about"
  match "/developers" => "main#developers"
  match "/terms" => "main#terms"
  match "/privacy" => "main#privacy"
  match "/contact" => "main#contact"
  match "/blog" => "main#blog"
  match "/facebook" => "main#facebook"
  match "/twitter" => "main#twitter"
  match "/troubleshooting" => "main#troubleshooting"
  match "/feedback" => "main#feedback"
end
