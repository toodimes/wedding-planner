class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :email
      t.boolean :invited
      t.boolean :replied
      t.boolean :attending
      t.boolean :thank_you_sent
      t.integer :number_of_attendees
      t.string :notes
      


      t.timestamps
    end
  end
end
