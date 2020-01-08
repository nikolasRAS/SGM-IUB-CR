class CreateSacraments < ActiveRecord::Migration[6.0]
  def change
    create_table :sacraments do |t|
      t.string :description

      t.timestamps
    end
  end
end
