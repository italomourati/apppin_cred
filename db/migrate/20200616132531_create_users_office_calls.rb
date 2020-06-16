class CreateUsersOfficeCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_calls do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
