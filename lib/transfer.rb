require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status 
  def initialize(sender, receiver = nil, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  def execute_transaction
    if valid? 
      @sender.balance - amount 
      @receiver.balance + amount
    else
      
      "Transaction rejected. Please check your account balance."
      
  end 
end
