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
    counter = 0
      while counter < 1
        if valid? 
        #binding.pry
          
          @sender.balance -= amount 
          @receiver.balance += amount
            self.status = "complete"
          
        else
          self.status = "rejected"
            "Transaction rejected. Please check your account balance."
        end
        counter =+ 1
      end 
  end 
end
