
class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount

  @@all = []

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
    @@all << self
  end

  def self.all 
    @@all
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if self.valid? && sender.balance >= @amount && status != "complete"
      
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      
    else
      
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end

    if self.status = "complete"
      return "Transaction rejected. Please check your account balance."
    end
  end


    def reverse_transfer
      if @status == "complete"
        @sender.balance == @sender.balance -= @amount
        @receiver.balance == @receiver.balance += @amount
        @status == "reversed"
      end
    end
  






end
