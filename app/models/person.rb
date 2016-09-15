class Person < ActiveRecord::Base
  has_many :transactions_sent, class_name: 'Transaction', foreign_key: 'sender_id'
  has_many :transactions_received, class_name: 'Transaction', foreign_key: 'receiver_id'

  def transactions
    Transaction.where("sender_id = ? OR receiver_id = ?", self.id, self.id)
  end
end
