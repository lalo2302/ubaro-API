class EndpointsController < ApplicationController

  def index
  end
  def authenticate
    # send as ~/477?pass=123
    phone = params[:param]
    password = params[:pass]
    person = Person.find_by(phone: phone, password: password)
    respond_to do |format|
      format.json { render json: person }
    end
  end

  def transactions
    id = params[:param]
    person = Person.find(id)
    transactions = person.transactions
    respond_to do |format|
      format.json { render json: transactions }
    end
  end

  def balance
    id = params[:param]
    person = Person.find(id)
    balance = person.balance.to_s
    respond_to do |format|
      format.json { render json: balance }
    end
  end

  def transaction
    sender = Person.find params[:param]
    receiver = Person.find_by :phone => params[:phone] 
    amount = params[:amount]
    transaction = Transaction.new
    transaction.sender = sender
    transaction.receiver = receiver
    transaction.amount = amount
    respond_to do |format|
      format.json { render json: transaction.make }
    end
  end
end
