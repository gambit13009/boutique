class UserMailer < ApplicationMailer

  def welcome_email()
     mail(from: "ajerome.david@laposte.net", to: "jerome.david@cegetel.net",
          subject: "This is a nice welcome email")
   end

   	
   
end

