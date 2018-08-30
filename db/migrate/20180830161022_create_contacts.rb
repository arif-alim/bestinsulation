class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :subject
      t.string :message

      t.timestamps
    end
  end
end
