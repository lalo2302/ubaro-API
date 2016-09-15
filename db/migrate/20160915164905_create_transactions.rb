class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.date :date

      t.timestamps null: false
    end
  end
end
