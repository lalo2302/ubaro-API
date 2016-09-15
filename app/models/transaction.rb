class Transaction < ActiveRecord::Base
  belongs_to :sender, class_name: 'Person', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'Person', foreign_key: 'receiver_id'
end
