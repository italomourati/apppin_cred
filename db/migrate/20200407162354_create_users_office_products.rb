class CreateUsersOfficeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_products do |t|
      t.string :title
      t.text :subtitle

      t.timestamps
    end
  end
end
