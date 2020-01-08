class CreateMountings < ActiveRecord::Migration[6.0]
  def change
    create_table :mountings do |t|
      t.references :team, null: false, foreign_key: true
      t.references :meeting, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.boolean :coordinator

      t.timestamps
    end
  end
end
