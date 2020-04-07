class CreateUsersOfficeImages < ActiveRecord::Migration[6.0]
  def change
    create_table :users_office_images do |t|
      t.string :title
      t.string :subtitle
      t.string :content_one
      t.string :content_two
      t.string :content

      t.timestamps
    end
  end
end
