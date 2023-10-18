class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|

      t.string :firstName
      t.string :lastName
      t.string :email
      t.timestamps

    end
  end
end
