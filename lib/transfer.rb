class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :bank_account
  def initialize(sender, receiver = nil, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  def valid?
    @sender.bank_account.status.valid?
  end 
  
end
