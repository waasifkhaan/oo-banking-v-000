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
    #binding.pry
      if valid? && @status == "pending" 
        @sender.balance -= amount 
        @receiver.balance += amount
          self.status = "complete"
          
      else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
        end
  end 
end
