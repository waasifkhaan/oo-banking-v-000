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
          counter += 1
          @sender.balance -= amount 
          @receiver.balance += amount
            self.status = "complete"
          
        else
          counter += 1
          self.status = "rejected"
            "Transaction rejected. Please check your account balance."
        end
      end 
      else
  end 
end
