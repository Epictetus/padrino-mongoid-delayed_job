class PadrinoMongoidDelayedJob < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  get :index do
    SimpleTask.new.doit
    "check heroku logs for job output"
  end

end
