class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :description
      t.string :year
      t.string :period
      t.string :place
      t.boolean :accomplished

      t.timestamps
    end
  end
end
