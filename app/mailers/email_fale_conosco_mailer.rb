class EmailFaleConoscoMailer < ApplicationMailer
  def email_ouvidoria(users_office_complaint) 
    @users_office_complaint = users_office_complaint
   mail(to: "compliance@pincred.com.br", subject: 'Contato Denúncia')
  end
end

