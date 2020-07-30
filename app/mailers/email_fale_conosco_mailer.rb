class EmailFaleConoscoMailer < ApplicationMailer
  def email_ouvidoria(users_office_complaint) 
    @users_office_complaint = users_office_complaint
   mail(to: "compliance@pincred.com.br", subject: 'Contato Denúncia')
  end
  
  def email_contato(users_office_contact) 
    @users_office_contact = users_office_contact
   mail(to: "ouvidoria@pincred.com.br", subject: 'Contato Fale-Conosco/Ouvidoria')
  end

end

