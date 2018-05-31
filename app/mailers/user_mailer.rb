class UserMailer < ApplicationMailer


  def welcome_email(user)
   users = user
     mail(from: "ajerome.david@laposte.net", to: "#{users}", 
          subject: "Recapitulatif de votre commande")
     puts "user"

   end
end

   

