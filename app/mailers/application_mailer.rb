class ApplicationMailer < ActionMailer::Base
  default to: "info@readlist.com", from: "info@readlist.com"
  layout 'mailer'
end
