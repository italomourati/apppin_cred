class CreateUsersOfficeFooters < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_footers do |t|
      t.string :title
      t.string :subtitle
      t.string :phone_one
      t.string :phone_two
      t.string :email

      t.timestamps
    end
  end
end
