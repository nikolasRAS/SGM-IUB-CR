class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :person, null: false, foreign_key: true
      t.string :address
      t.string :number
      t.string :neighborhood
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
