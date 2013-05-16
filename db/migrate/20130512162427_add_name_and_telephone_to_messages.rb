class AddNameAndTelephoneToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :telephone, :string
    add_column :messages, :name, :string
  end
end
