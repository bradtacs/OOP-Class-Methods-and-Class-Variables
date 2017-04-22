class BankAccount
    # class vars
    @@accounts = [] # accounts go here
    @@interest_rate = 1.01

    attr_reader :balance, :deposit, :withdraw
    def initialize
      @balance = 0
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

    def self.create
      @@accounts << BankAccount.new # add a new bank account into the array
    end

    def self.totol_funds
      total = 0
      @@accounts.each do |account|
      total += account.balance
     end
     return total
      end
    end

    def self.gain_interest_time # gain interstv
      @@accounts.each do |account|
        accounts.balance.to_i * @@interest_rate
     end
    end

  end
end
