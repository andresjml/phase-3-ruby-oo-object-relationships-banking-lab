class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    @@all=[]

    def initialize(name)
        @name=name
        @balance=1000
        @status="open"
        @@all<<self
    end

    def deposit(money)
        self.balance=self.balance+money
        self.balance
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        if(self.status=="open"&&self.balance>0)
            true
        else
            false
        end        
    end

    def close_account
        self.status="closed"
    end
end
