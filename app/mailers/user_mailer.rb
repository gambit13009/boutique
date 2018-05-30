class UserMailer < ApplicationMailer

  def welcome_email()

     mail(from: "ajerome.david@laposte.net", to: "jerome.david@cegetel.net", 
          subject: "Recapitulatif de votre commande")
   end


   
   
end

