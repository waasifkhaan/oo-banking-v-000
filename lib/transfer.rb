class Transfer
  attr_accessor :sender, :receiver, :amount, :status, :bank
  def initialize(sender, receiver = nil, amount = 0)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  def valid?
    valid? 
  end 
  
end
