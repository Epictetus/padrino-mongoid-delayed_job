desc "One time task to setup on heroku"
task :create do
  sh "heroku create --stack cedar"
  sh "heroku addons:add mongohq:free"
  sh "git push heroku master"
  sh "heroku run bundle exec padrino rake seed"
  sh "heroku ps:scale web=1 job=1"
end
