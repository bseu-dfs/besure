class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :entity
      t.string :name
      t.integer :company_id

      t.timestamps
    end
  end
end
