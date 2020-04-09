class CreateUsersOfficeCorrespondets < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_correspondets do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
