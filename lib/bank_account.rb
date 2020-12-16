require 'pry'

class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    @@all = []

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
        @@all << self

    end

    def self.all 
        @@all
    end

    def deposit(deposit)
        self.balance += deposit
    end

    def display_balance
        #binding.pry
        "Your balance is $#{self.balance}."
    end

    def valid?
        self.balance > 0 && self.status == "open"

    end

    def close_account
        self.status = "closed"
    end



end

#binding.pry 
0
