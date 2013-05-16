class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.integer :company_id
      t.integer :type_id

      t.timestamps
    end
  end
end
