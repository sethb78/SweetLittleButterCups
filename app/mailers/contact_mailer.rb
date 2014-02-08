class ContactMailer < ActionMailer::Base
  default from: "Requesst@sweetlittlebuttercups.com"


   def contact_message(contact_email)
    @contact_email=contact_email
    

    mail to: "sethb78@gmail.com", subject: "Sweet Little Buttercups Request", from: contact_email.email, reply_to: contact_email.email
  end
end
