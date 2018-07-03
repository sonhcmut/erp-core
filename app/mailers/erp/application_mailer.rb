module Erp
  class ApplicationMailer < ActionMailer::Base
    default from: "1633645@hcmut.edu.vn"
    layout 'mailer'

    private
    def send_email(email, subject)
      #@todo static email!!
      delivery_options = {
        address: 'smtp.gmail.com',
        port: 587,
        domain: 'hcmut.edu.vn',
        user_name: '1633645@hcmut.edu.vn',
        password: 'aA456321@#$',
        authentication: 'plain',
        enable_starttls_auto: true
      }
      mail(to: email,
           subject: subject,
           delivery_method_options: delivery_options)
    end
  end
end
