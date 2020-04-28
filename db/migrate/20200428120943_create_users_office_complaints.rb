class CreateUsersOfficeComplaints < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_complaints do |t|
      t.string :description
      t.string :email
      t.string :cpf
      t.string :dtnascimento
      t.string :phone
      t.string :state
      t.string :city
      t.string :typecontact
      t.text :content

      t.timestamps
    end
  end
end
