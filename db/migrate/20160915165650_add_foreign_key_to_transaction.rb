class AddForeignKeyToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :sender_id, :integer
    add_index :transactions, :sender_id
    add_foreign_key :transactions, :people, column: :sender_id

    add_column :transactions, :receiver_id, :integer
    add_index :transactions, :receiver_id
    add_foreign_key :transactions, :people, column: :receiver_id
  end
end
