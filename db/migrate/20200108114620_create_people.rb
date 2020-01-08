class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :type
      t.string :name
      t.date :bith_date
      t.string :gender
      t.string :marital_status
      t.references :sacrament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
