class UserMailer < ApplicationMailer

  def welcome_email()
     mail(from: "marcopolodu13@caramail.fr", to: "juliette8newton@gmail.com",
          subject: "This is a nice welcome email")
   end

   	
   
end

