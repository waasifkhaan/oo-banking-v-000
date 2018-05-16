require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :bank_account
  def initialize(sender, receiver = nil, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    binding.pry
    @sender.bank_account.valid? && @receiver.bank_account.status.valid?
    
  end 
  
end
