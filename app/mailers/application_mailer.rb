class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  default subject: "Signup"
  default to: "to@example.com"
  default body: "Hi"
  layout "mailer"
end
