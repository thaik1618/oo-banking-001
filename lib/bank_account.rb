class BankAccount

  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000.0
    @status = "open"
  end

  def deposit(amt)
    self.balance += amt
  end

  def display_balance
    "Your Balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0.0 
  end

  def close_account
    self.status = "closed"
  end
end