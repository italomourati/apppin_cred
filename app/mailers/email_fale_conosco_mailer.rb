class EmailFaleConoscoMailer < ApplicationMailer
  def email_ouvidoria(users_office_contact) 
   @users_office_contact = users_office_contact
   mail(to: "ouvidoria@pincred.com.br", subject: 'Contato Ouvidoria')
  end
end

