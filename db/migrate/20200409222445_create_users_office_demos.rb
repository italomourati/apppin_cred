class CreateUsersOfficeDemos < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_demos do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
