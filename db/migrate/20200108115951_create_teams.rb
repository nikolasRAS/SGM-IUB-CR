class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :description
      t.integer :coordination_couple
      t.integer :support_couple
      t.integer :coordination_young
      t.integer :support_young
      t.boolean :manager

      t.timestamps
    end
  end
end
