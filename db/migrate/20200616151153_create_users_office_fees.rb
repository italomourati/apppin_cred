class CreateUsersOfficeFees < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_fees do |t|
      t.text :content

      t.timestamps
    end
  end
end
