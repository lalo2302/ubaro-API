class Transaction < ActiveRecord::Base
  belongs_to :sender, class_name: 'Person', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'Person', foreign_key: 'receiver_id'

  def make
    sender = Person.find(self.sender_id)
    receiver = Person.find(self.receiver_id)
    sender.balance = sender.balance.to_d - amount
    receiver.balance = receiver.balance.to_d + amount  
    return true if receiver.save and sender.save and self.save else false
  end
end
