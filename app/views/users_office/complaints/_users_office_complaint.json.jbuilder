json.extract! users_office_complaint, :id, :description, :email, :cpf, :dtnascimento, :phone, :state, :city, :typecontact, :content, :created_at, :updated_at
json.url users_office_complaint_url(users_office_complaint, format: :json)
