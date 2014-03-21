class BankAccount
	attr_reader :balance

	def initialize(initialBalance=0)
		@balance = initialBalance
	end

	def withdraw(amount)
		@balance -= amount
	end

	def deposit(amount)
		@balance += amount
	end

        
end
