class AddForeignKeyToTransaction < ActiveRecord::Migration
  def change
    add_reference :transactions, :sender, index: true, foreign_key:true
    add_reference :transactions, :receiver, index: true, foreign_key:true
  end
end
