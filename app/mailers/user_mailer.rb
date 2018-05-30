class UserMailer < ApplicationMailer

  def welcome_email()
     mail(from: "marcopolodu13@caramail.fr", to: "jerome.david@cegetel.net",
          subject: "This is a nice welcome email")
   end

   	
   
end

