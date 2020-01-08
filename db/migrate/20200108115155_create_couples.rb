class CreateCouples < ActiveRecord::Migration[6.0]
  def change
    create_table :couples do |t|
      t.references :husband, null: false, foreign_key: { to_table: :people }
      t.references :wife, null: false, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
