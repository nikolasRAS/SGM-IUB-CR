class CreatePhoneNumbers < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_numbers do |t|
      t.references :person, null: false, foreign_key: true
      t.string :type
      t.string :number

      t.timestamps
    end
  end
end
