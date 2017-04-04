class BankAccount
  # class vars
  @@accounts = [] # accounts go here
  @@interest_rate = 0.15

  attr_reader :balance,
  def initialize
    balance = 0
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    if @balance - amount < 0
      puts "insuf funds"
    else
      @balance = @balance - amount
  end

  def create

    new_accuont = BankAccount.new
    @@accounts << new_accuont
    put new_accuont
  end

  def gain_interest
    @balance = @balance * (1 + @interest_rate)
  end


end

my_account = BankAccount.new

puts "My balance"
puts my_account.balance

puts "Deposit 200"
my_account.deposit(200)

puts my_account.balance
puts "Withdraw 500"
my_account.withdraw(500)

my_account.gain_interest

puts "My balance"
puts my_account.balance
